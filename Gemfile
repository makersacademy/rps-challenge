source 'https://rubygems.org'

ruby '3.0.2'

gem 'sinatra'

group :test do
  gem 'capybara'
  gem 'rspec'
  gem 'simplecov', require: false
  gem 'simplecov-console', require: false
  gem 'launchy'
end

group :development, :test do
  gem 'rubocop', '1.20'
  gem 'webdrivers', '~> 5.0', require: false
  gem 'sinatra-contrib'
  gem 'webrick'
end
