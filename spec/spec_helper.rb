unless ENV['TRAVIS']
  require 'simplecov'
  SimpleCov.start do
    add_filter "/spec"
  end
end

require 'bundler/setup'
Bundler.require :default, :test
require 'rspec/rails'
