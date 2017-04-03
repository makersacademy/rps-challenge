# ensure the following is AT THE TOP of your spec_helper.rb to get test coverage stats
require 'coveralls'
require 'simplecov'
require 'byebug'
require 'capybara/rspec'
require 'capybara'
require 'rspec'

require './app.rb'
require 'features/web_helpers.rb'

ENV['RACK_ENV'] = 'test'

SimpleCov.formatters = [
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]
# replace following line with SimpleCov.start to get coverage stats locally
SimpleCov.start
# run `open coverage/index.html` from the command line to view details

Capybara.app = RockPaperScissorsLizardSpock
