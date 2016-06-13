require "coveralls"
require "simplecov"
require File.join(File.dirname(__FILE__), "..", "app.rb")
require "capybara"
require "capybara/rspec"
require "rspec"
require "features/web_helpers"

ENV["RACK_ENV"] = "test"

SimpleCov.formatters = [
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]

Coveralls.wear!

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
