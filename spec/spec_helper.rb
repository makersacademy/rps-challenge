ENV['RACK_ENV'] = 'test'

require File.join(File.dirname(__FILE__), '..', 'rps_web.rb')

require 'capybara'
require 'capybara/rspec'
require 'rspec'
require 'coveralls'
require 'simplecov'
require 'byebug'
require 'web_helpers'

SimpleCov.formatters = [
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]
SimpleCov.start

Capybara.app = RPS

RSpec.configure do |config|
  config.include Capybara::DSL
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end
  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end
end
