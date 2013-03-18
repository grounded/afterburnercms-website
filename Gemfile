source 'https://rubygems.org'
ruby "1.9.3"

gem 'rails', github: 'rails/rails'
gem 'pg', :platform => :ruby
gem 'hyperion-postgres'
gem 'activerecord-jdbcpostgresql-adapter', :platform => :jruby
gem 'puma'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails', github: 'rails/sass-rails'
  gem 'coffee-rails', github: 'rails/coffee-rails'
  gem 'uglifier'
  gem 'bootstrap-sass', '~> 2.3.0.1'
end

gem 'jquery-rails'
gem 'abc', '~> 0.0.2'
gem 'abc-adapters', '~> 0.0.2'
gem 'haml', :github => 'haml/haml', :branch => 'stable'

group :development do
  gem 'quiet_assets'
end

group :development, :test do
  gem 'pry'
  gem 'pry-rails'
  gem 'rspec-rails'
  gem 'capybara'
end
group :test do
  gem 'simplecov' unless ENV['TRAVIS']
end

group :production do
  gem 'newrelic_rpm'
end
