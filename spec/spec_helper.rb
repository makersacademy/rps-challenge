# ensure the following is AT THE TOP of your spec_helper.rb to get test coverage stats
require 'coveralls'
require 'simplecov'
require 'features/web_helpers'

SimpleCov.formatters = [
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]
# replace following line with SimpleCov.start to get coverage stats locally
SimpleCov.start
# run `open coverage/index.html` from the command line to view details

require 'byebug'
require 'capybara/rspec'

ENV['RACK_ENV'] = 'test'

require File.join(File.dirname(__FILE__), '..', 'app.rb')
require 'features/web_helpers'

require 'capybara'
require 'rspec'

Capybara.app = RockPaperScissors

RSpec.configure do |config|
  config.include Capybara::DSL
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end
  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end
end
