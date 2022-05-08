source 'https://rubygems.org'

ruby '3.0.2'

gem 'sinatra'

group :test do
  gem 'capybara'
  gem 'rspec'
  gem 'simplecov', require: false
  gem 'simplecov-console', require: false
end

group :development, :test, :deployment do
  gem 'webrick'
  gem 'sinatra-contrib'
  gem 'rack'
  gem 'launchy'
  gem 'rubocop', '1.20'
end
