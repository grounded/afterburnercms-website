require_relative '../../lib/hyperion_configuration_extractor'
connection_string = HyperionConfigurationExtractor.new(ActiveRecord::Base).connection_string
Abc::Adapters.datastore_options = [:postgres, connection_url: connection_string]
Abc::Adapters.enable_datastore!
