# ensure the following is AT THE TOP of your spec_helper.rb to get test coverage stats
require 'spec_helper'
ENV['RACK_ENV'] = 'test'
require './app.rb'



require 'capybara'
require 'capybara/rspec'
require 'rspec'
require 'features/web_helpers.rb'
require 'coveralls'
require 'simplecov'

SimpleCov.formatters = [
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]
Coveralls.wear!
# replace following line with SimpleCov.start to get coverage stats locally
SimpleCov.start
# run `open coverage/index.html` from the command line to view details

require 'byebug'
require 'capybara/rspec'

Capybara.app = Rps
