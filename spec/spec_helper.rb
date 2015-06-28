require 'byebug'
require 'capybara/rspec'
require 'coveralls'
require 'simplecov'
require './lib/rps_control.rb'
require 'rspec'

Capybara.app = RPSWeb


SimpleCov.formatters = [
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]
Coveralls.wear!


ENV['RACK_ENV'] = 'test'

require File.join(File.dirname(__FILE__), '..', 'lib/rps_control.rb')