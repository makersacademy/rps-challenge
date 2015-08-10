require 'byebug'
require 'capybara/rspec'
require 'coveralls'
require 'simplecov'

require File.join(File.dirname(__FILE__), '..', 'lib/rock_paper_scissors_web.rb')

Capybara.app = RockPaperScissors

SimpleCov.formatters = [
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]
Coveralls.wear!