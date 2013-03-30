source 'https://rubygems.org'
unless ENV['TRAVIS']
  ruby "1.9.3"
end

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

# Fixes https://github.com/rails/jquery-rails/commit/15b0e68677145906e791c140cff014f43c7bc45d#commitcomment-2909560
gem 'jquery-rails', :github => 'rails/jquery-rails'

git 'https://github.com/grounded/afterburnercms.git', :branch => 'wip_rearch', :glob => "{,**/*}.gemspec" do
  gem 'abc'
  gem 'abc-adapters'
  gem 'abc-delivery-shared'
end
gem 'afterburner', :github => 'grounded/afterburner'
gem 'haml', '>= 4.0.1'


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

gem "bourbon", "~> 3.1.1"
gem "neat", "~> 1.2.0"
