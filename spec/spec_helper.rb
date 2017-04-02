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

require_relative './features/web_helpers'




# add this to spec/spec_helper.rb

ENV['RACK_ENV'] = 'test'

# require our Sinatra app file
require File.join(File.dirname(__FILE__), '..', 'app.rb')

require 'capybara'
require 'capybara/rspec'
require 'rspec'

# tell Capybara about our app class
Capybara.app = RPS
