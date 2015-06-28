
ENV['RACK_ENV'] = 'test'

require File.join(File.dirname(__FILE__), '..', 'lib/rps.rb')

require 'byebug'
require 'capybara/rspec'
require 'coveralls'
require 'simplecov'
require 'rspec'
require 'capybara'

Capybara.app = RPS


SimpleCov.formatters = [
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]
Coveralls.wear!