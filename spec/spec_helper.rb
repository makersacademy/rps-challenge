# ensure the following is AT THE TOP of your spec_helper.rb to get test coverage stats
require 'coveralls'
require 'simplecov'

SimpleCov.formatters = [
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]
# replace following line with SimpleCov.start to get coverage stats locally
#SimpleCov.start
Coveralls.wear!
# run `open coverage/index.html` from the command line to view details

require_relative '../app'
require 'byebug'
require 'capybara/rspec'
require 'features/web_helpers'
ENV['RACK_ENV']='test'
Capybara.app = RockPaperScissors
