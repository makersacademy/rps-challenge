require 'coveralls'
require 'simplecov'

SimpleCov.formatters = [
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]
SimpleCov.start

require 'byebug'
require 'capybara/rspec'
require 'features/web_helpers'

ENV['RACK_ENV']= "test"

require File.join(File.dirname(__FILE__), '..', 'app.rb')
Capybara.app = RPS
