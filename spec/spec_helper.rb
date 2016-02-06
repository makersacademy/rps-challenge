# ensure the following is AT THE TOP of your spec_helper.rb to get test coverage stats
require 'coveralls'
require 'simplecov'
require 'web_helpers'
require 'capybara'
require 'capybara/rspec'
require 'rspec'
require File.join(File.dirname(__FILE__), '..', 'app.rb')
Capybara.app = MyApp
ENV['RACK_ENV'] = 'test'

SimpleCov.formatters = [
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]
# replace following line with SimpleCov.start to get coverage stats locally
SimpleCov.start
# run `open coverage/index.html` from the command line to view details

require 'byebug'
Coveralls.wear!
