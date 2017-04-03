# ensure the following is AT THE TOP of your spec_helper.rb to get test coverage stats
require 'coveralls'
require 'simplecov'

SimpleCov.formatters = [
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]
# replace following line with SimpleCov.start to get coverage stats locally
SimpleCov.start
# run `open coverage/index.html` from the command line to view details

require 'byebug'
require 'capybara/rspec'

ENV['RACK_ENV'] = 'test'
require_relative '../app.rb'
require 'rspec'
require 'capybara'
require 'features/web_helpers'

Capybara.app = RPS
