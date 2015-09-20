# ensure the following is AT THE TOP of your spec_helper.rb to get test coverage stats

require 'coveralls'
require 'simplecov'

SimpleCov.formatters = [
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]
# replace following line with SimpleCov.start to get coverage stats locally
Coveralls.wear!
# run `open coverage/index.html` from the command line to view details

require File.join(File.dirname(__FILE__), '..', 'rps_web.rb')

require 'byebug'
require 'capybara/rspec'

Capybara.app = Rock_Paper_Scissors
