# Make app things available.

%w(conductors entities interactors repositories).each do |pattern|
    $LOAD_PATH.push File.expand_path("../../app/#{pattern}", __FILE__)
end

$LOAD_PATH.push File.expand_path('../../app', __FILE__)

require 'abc'

unless ENV['TRAVIS']
  require 'simplecov'
  SimpleCov.start do
    add_filter '/spec/'
  end
end
