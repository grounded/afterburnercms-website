require 'bundler/setup'
require 'sinatra/base'

Dir[File.expand_path('./lib/*.rb')].each {|f| require f }

class Website < Sinatra::Base
  root_dir = File.dirname(__FILE__)

  set :environment, ENV['RACK_ENV'] || :development
  set :root, root_dir
  set :app_file, __FILE__
  set :static, true

  helpers do
    include Helpers
  end

  before do
    # @var = blah
  end

  get '/css/application.css' do
    sass :application
  end

  get '/' do
    haml :home
  end

end
