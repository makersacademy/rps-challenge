# ensure the following is AT THE TOP of your spec_helper.rb to get test coverage stats
require 'coveralls'
require 'simplecov'
require 'features/web_helpers'

SimpleCov.formatters = [
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]
# replace following line with SimpleCov.start to get coverage stats locally
SimpleCov.start
# run `open coverage/index.html` from the command line to view details

require 'byebug'
ENV['RACK_ENV'] = 'test'

require File.join(File.dirname(__FILE__), '..', 'app.rb')

require 'rack'
require 'capybara'
require 'capybara/rspec'
require 'rspec'
require 'sinatra'
require 'rack/test'

Capybara.app = RPS
