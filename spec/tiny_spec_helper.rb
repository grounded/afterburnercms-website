# Make app things available.
$LOAD_PATH.push File.expand_path('../../app', __FILE__)

require 'abc'

unless ENV['TRAVIS']
  require 'simplecov'
  SimpleCov.start do
    add_filter '/spec/'
  end
end
