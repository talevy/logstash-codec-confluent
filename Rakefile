require "logstash/devutils/rake"
require 'jars/installer'

task :default do
    system("rake -T")
end

task :install_jars do
  Jars::Installer.vendor_jars!
end
