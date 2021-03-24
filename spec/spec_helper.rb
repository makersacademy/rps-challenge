ENV['RACK_ENV'] = 'test'
require './app'
require 'capybara'
require 'rspec'
require 'capybara/rspec'
require 'simplecov'
require 'simplecov-console'
require './spec/test_helper'

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
  SimpleCov::Formatter::Console,
  # Want a nice code coverage website? Uncomment this next line!
  # SimpleCov::Formatter::HTMLFormatter
])
SimpleCov.start

# For accurate test coverage measurements, require your code AFTER 'SimpleCov.start'

Capybara.app = RPS
