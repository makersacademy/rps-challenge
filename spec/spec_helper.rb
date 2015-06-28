ENV['RACK_ENV'] = 'test'

require 'byebug'
require 'capybara'
require 'capybara/rspec'
require 'coveralls'
require 'simplecov'
require 'rspec'
#require 'rspec-sinatra'
require './app/RockPaperScissorsWeb.rb'

# require './spec/features/play'


Capybara.app = RockPaperScissorsWeb


require File.join(File.dirname(__FILE__), '..', 'app/RockPaperScissorsWeb.rb')


SimpleCov.formatters = [
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]
Coveralls.wear!
