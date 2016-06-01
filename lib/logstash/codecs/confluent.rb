# encoding: utf-8
require "open-uri"
require "avro"
require "logstash/codecs/base"
require "logstash/event"
require "logstash/timestamp"
require "logstash/util"
java_import "java.util.Properties"
java_import "io.confluent.kafka.serializers.KafkaAvroDecoder"
java_import "io.confluent.kafka.serializers.KafkaAvroEncoder"
java_import "import io.confluent.kafka.schemaregistry.client.SchemaRegistryClient"
java_import "import io.confluent.kafka.schemaregistry.client.CachedSchemaRegistryClient"
java_import "org.apache.kafka.common.errors.SerializationException"
java_import "kafka.utils.VerifiableProperties"


class LogStash::Codecs::Confluent < LogStash::Codecs::Base
  config_name "confluent"


  # schema path to fetch the schema from.
  # This can be a 'http' or 'file' scheme URI
  # example:
  #
  # * http - `http://example.com/schema.avsc`
  # * file - `/path/to/schema.avsc`
  config :schema_registry_urls, :validate => :string, :required => true
  config :max_schemas_per_subject, :validate => :number, :default => 1000
  config :encode_schema_uri, :validate => :string
  config :encode_subject, :validate => :string

  MAGIC_BYTE = 0

  public
  def register
    @registry = CachedSchemaRegistry.new(schema_registry_urls.split(','), max_schemas_per_subject)
    @encode_schema = Avro::Schema.parse(open(encode_schema_uri).read) unless encode_schema_uri.nil?
  end

  public
  def decode(data)
    if data.length < 5
      @logger.error("message is too small")
      return
    end
    datum = StringIO.new(data)
    magic_byte, schema_id = datum.read(5).unpack("cI>")
    if magic_byte != MAGIC_BYTE
      @logger.error('message does not start with magic byte')
      return
    end
    schema = Avro::Schema.parse(@registry.getById(schema_id).to_string)
    decoder = Avro::IO::BinaryDecoder.new(datum)
    datum_reader = Avro::IO::DatumReader.new(schema)
    yield LogStash::Event.new(datum_reader.read(decoder))
  end

  public
  def encode(event)
    id = @registry.register(@encode_schema)
    dw = Avro::IO::DatumWriter.new(@schema)
    buffer = StringIO.new
    buffer.write(MAGIC_BYTE)
    buffer.write([id].pack('l>*'))
    encoder = Avro::IO::BinaryEncoder.new(buffer)
    dw.write(event.to_hash, encoder)
    @on_event.call(event, buffer.string)
  end
end
