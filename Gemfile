source 'https://rubygems.org'

ruby '3.0.2'

gem 'sinatra'
gem "sinatra-contrib", "~> 2.1"
gem "rack", "~> 2.2"

group :test do
  gem 'capybara'
  gem 'rspec'
  gem 'simplecov', require: false
  gem 'simplecov-console', require: false
  gem 'launchy'
end

group :development, :test do
  gem 'rubocop', '1.20'
end

gem "webrick", "~> 1.7"
