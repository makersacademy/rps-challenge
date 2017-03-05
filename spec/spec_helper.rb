# ensure the following is AT THE TOP of your spec_helper.rb to get test coverage stats
ENV['RACK_ENV']='test'
require 'coveralls'
require 'simplecov'
require 'byebug'
require 'capybara/rspec'
require 'capybara'
require 'rspec'
require './game'

Capybara.app = Game

SimpleCov.formatters = [
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]
# replace following line with SimpleCov.start to get coverage stats locally
SimpleCov.start
# run `open coverage/index.html` from the command line to view details

RSpec.configure do |config|
config.include Capybara::DSL
end
