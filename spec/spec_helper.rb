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


# require 'capybara/rspec'

ENV['RACK_ENV'] = 'test'
require_relative '../app.rb'
# require 'capybara'
require 'capybara/rspec'
# require 'rspec'
require 'byebug'
require 'features/web_helpers.rb'
Capybara.app = Rps


# RSpec.configure do |config|
#
#   config.expect_with :rspec do |expectations|
#     expectations.include_chain_clauses_in_custom_matcher_descriptions = true
#   end
#
#   config.mock_with :rspec do |mocks|
#     mocks.verify_partial_doubles = true
#   end
#
#   config.shared_context_metadata_behavior = :apply_to_host_groups
#
# end
