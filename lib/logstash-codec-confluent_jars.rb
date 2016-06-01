# this is a generated file, to avoid over-writing it just delete this comment
begin
  require 'jar_dependencies'
rescue LoadError
  require 'com/fasterxml/jackson/core/jackson-core/2.5.4/jackson-core-2.5.4.jar'
  require 'log4j/log4j/1.2.17/log4j-1.2.17.jar'
  require 'jline/jline/0.9.94/jline-0.9.94.jar'
  require 'io/confluent/kafka-schema-registry-client/3.0.0/kafka-schema-registry-client-3.0.0.jar'
  require 'org/codehaus/jackson/jackson-mapper-asl/1.9.13/jackson-mapper-asl-1.9.13.jar'
  require 'org/slf4j/slf4j-log4j12/1.7.6/slf4j-log4j12-1.7.6.jar'
  require 'io/confluent/kafka-avro-serializer/3.0.0/kafka-avro-serializer-3.0.0.jar'
  require 'com/101tec/zkclient/0.5/zkclient-0.5.jar'
  require 'org/apache/avro/avro/1.7.7/avro-1.7.7.jar'
  require 'io/confluent/common-config/3.0.0/common-config-3.0.0.jar'
  require 'org/apache/commons/commons-compress/1.4.1/commons-compress-1.4.1.jar'
  require 'junit/junit/3.8.1/junit-3.8.1.jar'
  require 'com/thoughtworks/paranamer/paranamer/2.3/paranamer-2.3.jar'
  require 'org/codehaus/jackson/jackson-core-asl/1.9.13/jackson-core-asl-1.9.13.jar'
  require 'org/tukaani/xz/1.0/xz-1.0.jar'
  require 'org/slf4j/slf4j-api/1.6.4/slf4j-api-1.6.4.jar'
  require 'io/confluent/common-utils/3.0.0/common-utils-3.0.0.jar'
  require 'org/jboss/netty/netty/3.2.2.Final/netty-3.2.2.Final.jar'
  require 'org/apache/zookeeper/zookeeper/3.4.3/zookeeper-3.4.3.jar'
  require 'com/fasterxml/jackson/core/jackson-annotations/2.5.0/jackson-annotations-2.5.0.jar'
  require 'com/fasterxml/jackson/core/jackson-databind/2.5.4/jackson-databind-2.5.4.jar'
  require 'org/xerial/snappy/snappy-java/1.0.5/snappy-java-1.0.5.jar'
end

if defined? Jars
  require_jar( 'com.fasterxml.jackson.core', 'jackson-core', '2.5.4' )
  require_jar( 'log4j', 'log4j', '1.2.17' )
  require_jar( 'jline', 'jline', '0.9.94' )
  require_jar( 'io.confluent', 'kafka-schema-registry-client', '3.0.0' )
  require_jar( 'org.codehaus.jackson', 'jackson-mapper-asl', '1.9.13' )
  require_jar( 'org.slf4j', 'slf4j-log4j12', '1.7.6' )
  require_jar( 'io.confluent', 'kafka-avro-serializer', '3.0.0' )
  require_jar( 'com.101tec', 'zkclient', '0.5' )
  require_jar( 'org.apache.avro', 'avro', '1.7.7' )
  require_jar( 'io.confluent', 'common-config', '3.0.0' )
  require_jar( 'org.apache.commons', 'commons-compress', '1.4.1' )
  require_jar( 'junit', 'junit', '3.8.1' )
  require_jar( 'com.thoughtworks.paranamer', 'paranamer', '2.3' )
  require_jar( 'org.codehaus.jackson', 'jackson-core-asl', '1.9.13' )
  require_jar( 'org.tukaani', 'xz', '1.0' )
  require_jar( 'org.slf4j', 'slf4j-api', '1.6.4' )
  require_jar( 'io.confluent', 'common-utils', '3.0.0' )
  require_jar( 'org.jboss.netty', 'netty', '3.2.2.Final' )
  require_jar( 'org.apache.zookeeper', 'zookeeper', '3.4.3' )
  require_jar( 'com.fasterxml.jackson.core', 'jackson-annotations', '2.5.0' )
  require_jar( 'com.fasterxml.jackson.core', 'jackson-databind', '2.5.4' )
  require_jar( 'org.xerial.snappy', 'snappy-java', '1.0.5' )
end
