require 'capybara/rspec'
require_relative '../app'
require_relative './features/web_helper'
require 'simplecov'
require 'simplecov-console'

ENV['RACK_ENV'] = 'test'

Capybara.app = RPS

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
  SimpleCov::Formatter::Console,
  # Want a nice code coverage website? Uncomment this next line!
  # SimpleCov::Formatter::HTMLFormatter
])
SimpleCov.start

RSpec.configure do |config|
  config.after(:suite) do
    
  end
end
