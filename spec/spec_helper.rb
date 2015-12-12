# ensure the following is AT THE TOP of your spec_helper.rb to get test coverage stats
require 'coveralls'
require 'simplecov'
require 'byebug'
require 'capybara/rspec'
require 'capybara'
require 'capybara/rspec'
require 'rspec'
require 'web_helpers.rb'

ENV['RACK_ENV'] = 'test'

require File.join(File.dirname(__FILE__), '..', 'lib/app.rb')

Capybara.app = Battle


SimpleCov.formatters = [
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]
# replace following line with SimpleCov.start to get coverage stats locally
SimpleCov.start
Coveralls.wear!
# run `open coverage/index.html` from the command line to view details
