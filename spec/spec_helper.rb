require 'capybara/rspec'
require 'simplecov'
require 'simplecov-console'
require_relative '../app.rb'

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
  SimpleCov::Formatter::Console,
  # Want a nice code coverage website? Uncomment this next line!
  # SimpleCov::Formatter::HTMLFormatter
])
SimpleCov.start

RSpec.configure do |config|
  config.after(:suite) do

  end
end

Capybara.app = RPSWeb
