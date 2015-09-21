require 'byebug'
require 'capybara/rspec'
require 'coveralls'
require 'simplecov'

ENV['RACK_ENV'] = 'test'

require './rps_web.rb'

SimpleCov.formatters = [
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]
Coveralls.wear!

Capybara.app = RpsWeb
