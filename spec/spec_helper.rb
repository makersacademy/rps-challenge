# ensure the following is AT THE TOP of your spec_helper.rb to get test coverage stats
require 'capybara'
require 'capybara/rspec'
require 'rspec'
require 'coveralls'
require 'simplecov'
require './spec/features/web_helpers.rb'

require File.join(File.dirname(__FILE__), '..', 'app.rb')

ENV['RACK_ENV'] = 'test'

srand 123

SimpleCov.formatters = [
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]

Capybara.app = RockPaperScissors
# replace following line with SimpleCov.start to get coverage stats locally
SimpleCov.start
Coveralls.wear!
# run `open coverage/index.html` from the command line to view details

require 'byebug'
require 'capybara/rspec'
