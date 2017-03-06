require 'coveralls'
require 'simplecov'
require 'features/web_helper'

ENV['RACK_ENV'] = 'test'
require 'capybara/rspec'
require 'rspec'
# require 'features/web_helpers'

require File.join(File.dirname(__FILE__), '..', 'app.rb')

Capybara.app = Game

SimpleCov.formatters = [
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]
# replace following line with SimpleCov.start to get coverage stats locally
#SimpleCov.start
Coveralls.wear!
# run `open coverage/index.html` from the command line to view details

require 'byebug'
#require 'capybara/rspec'
