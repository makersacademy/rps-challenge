source 'https://rubygems.org'

ruby '3.0.2'

group :production do
  gem 'sinatra'
end

group :test do
  gem 'capybara'
  gem 'rspec'
  gem 'simplecov', require: false
  gem 'simplecov-console', require: false
  gem "webrick", "~> 1.7"
end

group :development, :test do
  gem 'sinatra'
  gem 'rubocop', '1.20'
end

