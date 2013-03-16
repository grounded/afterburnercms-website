unless ENV['TRAVIS']
  require 'simplecov'
  SimpleCov.start do
    add_filter "/spec"
  end
end

ENV["RAILS_ENV"] ||= 'test'
require File.expand_path('../config/application', File.dirname(__FILE__))

require 'capybara/rspec'
require 'rspec/rails'
