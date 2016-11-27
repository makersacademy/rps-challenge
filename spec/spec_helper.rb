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

require File.join(File.dirname(__FILE__), '..', 'app.rb')

require 'capybara'
require 'rspec'
require 'features/web_helpers.rb'

# Capybara.default_driver = :selenium

Capybara.app = RPS
