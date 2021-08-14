require 'capybara'
require 'capybara/rspec'
require 'simplecov'
require 'simplecov-console'
require 'rack_session_access'
require 'rack_session_access/capybara'

ENV['RACK_ENV'] = 'test'

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
  SimpleCov::Formatter::Console,
  SimpleCov::Formatter::HTMLFormatter
])
SimpleCov.start

require File.join(File.dirname(__FILE__), '..', 'app.rb')
Capybara.app = RPS

RPS.configure do |app|
  app.use RackSessionAccess::Middleware
end

RSpec.configure do |config|
  config.after(:suite) do
    puts
    puts "\e[33mHave you considered running rubocop? It will help you improve your code!\e[0m"
    puts "\e[33mTry it now! Just run: rubocop\e[0m"
  end
end
