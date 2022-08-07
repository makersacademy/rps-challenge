source 'https://rubygems.org'

ruby '3.0.0'

gem 'sinatra'
gem 'sinatra-contrib'
gem 'webrick'
gem 'puma'
gem 'rack'

group :test do
  gem 'capybara'
  gem 'rspec'
  gem 'pg'
  gem 'simplecov', require: false
  gem 'simplecov-console', require: false
end

group :development, :test do
  gem 'rubocop', '1.20'
  gem 'sinatra'
  gem 'sinatra-contrib'
  gem 'rack'
  gem 'webrick'
  gem 'launchy'
end

group :production do
  gem 'pg'
end
