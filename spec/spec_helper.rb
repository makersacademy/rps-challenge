ENV['RACK_ENV'] = 'test'

require File.join(File.dirname(__FILE__), '..', './rps_app.rb')

require 'features/web_helpers'
require 'coveralls'
require 'simplecov'
require 'capybara'
require 'capybara/rspec'
require 'byebug'
require 'rspec'

SimpleCov.formatters = [
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
  ]

SimpleCov.start
Capybara.app = RpsApp

RSpec.configure do |config|
  config.include Capybara::DSL

  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end
  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.filter_run :focus
  config.run_all_when_everything_filtered = true
end
