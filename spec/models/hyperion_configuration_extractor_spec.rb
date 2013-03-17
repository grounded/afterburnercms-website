require 'spec_helper'
require_relative '../../lib/hyperion_configuration_extractor'

describe HyperionConfigurationExtractor do
  describe "extracting postgres connection strings from ActiveRecord::Base" do
    let(:config){ {} }
    let(:base){ mock }
    subject{ HyperionConfigurationExtractor.new(base) }

    before do
      base.stub(:connection_config).and_return(config)
    end

    it "outputs the connection string appropriately" do
      config[:database] = "foo"
      config[:username] = "bar"
      config[:password] = "baz"
      subject.connection_string.should == "postgres://bar:baz@localhost/foo"
    end

    describe "getting the hostname" do
      it "gets the config host when it's available" do
        config[:host] = 'foo'
        subject.host.should == "foo"
      end

      it "defaults to 'localhost' if no host is specified" do
        subject.host.should == 'localhost'
      end
    end

    describe "getting the database" do
      it "gets the config database" do
        config[:database] = 'foo'
        subject.database.should == "foo"
      end
    end
  end
end
