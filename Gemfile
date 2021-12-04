source 'https://rubygems.org'

ruby '3.0.2'

gem 'sinatra'
gem 'sinatra-contrib'
gem 'rack'
gem 'selenium-webdriver'
gem "puma", "~> 5.5"

group :test do
  gem 'capybara'
  gem 'rspec'
  gem 'simplecov', require: false
  gem 'simplecov-console', require: false
end

group :development, :test do
  gem 'rubocop', '1.20'
end

