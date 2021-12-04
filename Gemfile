source 'https://rubygems.org'

ruby '3.0.2'

gem 'sinatra'

group :test do
  gem 'capybara'
  gem 'rspec'
  gem 'simplecov', require: false
  gem 'simplecov-console', require: false
  gem 'sinatra-contrib'   # to have the extension sinatra reloader
  gem 'launchy'           # to open the file automatically. add #save_and_open_page
  gem 'rack'
end

group :development, :test do
  gem 'rubocop', '1.20'
end
