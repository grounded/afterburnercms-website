source 'https://rubygems.org'

gem 'rails', '3.2.12'
gem 'pg'
gem 'activerecord-jdbcpostgresql-adapter', :platform => :jruby
gem 'thin'
gem 'strong_parameters', '~> 0.2.0'

group :development do
  gem 'quiet_assets'
end

group :production do
  gem 'newrelic_rpm'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
  gem 'bootstrap-sass', '~> 2.3.0.1'
end

gem 'jquery-rails'
gem 'abc', :path => '../afterburnercms'
gem 'abc-adapters', :path => '../afterburnercms/adapters'
gem 'haml'

gem 'pry'
gem 'pry-rails'

group :test do
  gem 'rspec'
  gem 'rspec-rails'
  gem 'capybara'
  unless ENV['TRAVIS']
    gem 'simplecov'
  end
end

