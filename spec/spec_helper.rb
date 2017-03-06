require 'coveralls'
require 'simplecov'

SimpleCov.formatters = [
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]
Coveralls.wear!

ENV['RACK_ENV'] = 'test'
require 'capybara/rspec'
require 'rspec'
require 'features/web_helpers'

require File.join(File.dirname(__FILE__), '..', 'app.rb')

Capybara.app = Game


# replace following line with SimpleCov.start to get coverage stats locally
# SimpleCov.start
# run `open coverage/index.html` from the command line to view details

require 'byebug'
