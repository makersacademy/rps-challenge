require 'coveralls'
require 'simplecov'
Coveralls.wear!
SimpleCov.formatters = [
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]
require 'byebug'
# require Sinatra app file
require './app.rb'
require 'features/web_helpers.rb'
require 'capybara'
require 'capybara/rspec'
require 'rspec'

Capybara.app = RPS



ENV['RACK_ENV'] = 'test'
