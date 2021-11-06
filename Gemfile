source 'https://rubygems.org'

ruby '3.0.2'

gem "webrick"
gem 'sinatra'
gem 'sinatra-contrib'

group :test do
  gem 'capybara'
  gem 'rspec'
  gem 'simplecov', require: false
  gem 'simplecov-console', require: false
end

group :development, :test do
  gem 'rubocop', '1.20'
  gem "selenium-webdriver"
end
