require 'byebug'
require 'capybara/rspec'
require 'coveralls'
require 'simplecov'
require 'player'
require 'game_master'
require 'ai_player'

SimpleCov.formatters = [
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]
Coveralls.wear!