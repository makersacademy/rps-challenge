require 'capybara/rspec'
require 'simplecov'
require 'simplecov-console'
require './app'
require 'features/web_helpers'

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
  SimpleCov::Formatter::Console,
  # Want a nice code coverage website? Uncomment this next line!
  # SimpleCov::Formatter::HTMLFormatter
])
SimpleCov.start

RSpec.configure do |config|
end

RACK_ENV='test'

Capybara.app = RockPaperScissors
