require 'byebug'
require 'capybara/rspec'
require 'coveralls'
require 'simplecov'
require './lib/app_web'
require 'rspec'

Capybara.app = AppWeb


SimpleCov.formatters = [
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]
Coveralls.wear!


ENV['RACK_ENV'] = 'test'

require File.join(File.dirname(__FILE__), '..', 'lib/app_web.rb')