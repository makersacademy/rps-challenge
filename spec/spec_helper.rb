require File.join(File.dirname(__FILE__), '..', 'lib/RPS_web.rb')
require 'RPS_web'
require 'game'
require 'byebug'
require 'capybara/rspec'
require 'coveralls'
require 'capybara'
require 'rspec'
require 'simplecov'

Capybara.app = RockPaperScissors

SimpleCov.formatters = [
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]
Coveralls.wear!
