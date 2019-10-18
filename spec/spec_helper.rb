ENV['RACK_ENV'] = 'test'
require File.join(File.dirname(__FILE__), '..', 'app.rb')
require 'capybara/rspec'
require 'simplecov'
require 'capybara'
require 'simplecov-console'
require 'login_help'
Capybara.app = Rps
SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
  SimpleCov::Formatter::Console,
])
SimpleCov.start

RSpec.configure do |config|
  config.after(:suite) do
  end
end

