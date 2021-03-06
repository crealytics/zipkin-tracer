require 'zipkin-tracer'
require File.join(`pwd`.chomp, 'spec', 'support', 'test_app')
require File.join(`pwd`.chomp, 'spec', 'support', 'in_memory_logger')

zipkin_tracer_config = {
  service_name: 'your service name here', 
  service_port: 9410, 
  sample_rate: 1, 
  scribe_server: '127.0.0.1:9410',
  logger: InMemoryLogger
}

use ZipkinTracer::RackHandler, zipkin_tracer_config
run TestApp.new
