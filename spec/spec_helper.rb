require File.join(File.dirname(__FILE__), '..', 'lib/rps_web.rb')
require 'rps_web'
require 'game'
require 'player'
require 'byebug'
require 'capybara/rspec'
require 'coveralls'
require 'capybara'
require 'rspec'
require 'simplecov'

Capybara.app = Rpsweb

SimpleCov.formatters = [
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]
Coveralls.wear!
