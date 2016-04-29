ENV['RACK_ENV'] = 'test'
# ensure the following is AT THE TOP of your spec_helper.rb to get test coverage stats
require 'coveralls'
require 'simplecov'
require 'byebug'
require 'capybara'
require 'capybara/rspec'
require './app.rb'

# require 'features/web_helpers.rb'

Capybara.app = Rps

SimpleCov.formatters = [
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]
# replace following line with SimpleCov.start to get coverage stats locally
SimpleCov.start
# run `open coverage/index.html` from the command line to view details
