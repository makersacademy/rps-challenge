source 'https://rubygems.org'

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }


ruby '2.5.0'

gem 'rake'
gem 'sinatra'
gem 'selenium-webdriver'

group :test do
  gem 'rack'
  gem 'capybara'
  gem 'rspec'
  gem 'rspec-sinatra'
  gem "rack-test", require: "rack/test"
  gem 'rubocop', '0.56.0'
  gem 'simplecov', require: false
  gem 'simplecov-console', require: false
end
