ENV['RACK_ENV'] = 'test'

require File.join(File.dirname(__FILE__), '..', 'app', 'rps_app.rb')
require File.join(File.dirname(__FILE__), 'feature_tests', 'web_helper.rb')
require 'capybara/rspec'
require 'simplecov'
require 'simplecov-console'
Capybara.app = RPS

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
  SimpleCov::Formatter::Console,
  SimpleCov::Formatter::HTMLFormatter
])
SimpleCov.start
