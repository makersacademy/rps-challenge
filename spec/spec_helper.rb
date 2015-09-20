# ensure the following is AT THE TOP of your spec_helper.rb to get test coverage stats
require 'coveralls'
require 'simplecov'
require 'byebug'
require 'capybara/rspec'

ENV['RACK_ENV'] = 'test'

require './lib/rps_web'

Capybara.app = RockPaperScissors
SimpleCov.formatters = [
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]
# replace following line with SimpleCov.start to get coverage stats locally
Coveralls.wear!
# run `open coverage/index.html` from the command line to view details
