require "rspec/expectations"
require "capybara"
require "capybara/rspec"
require "rspec"
require "simplecov"
require "simplecov-console"
require "features/web_helpers"

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
  SimpleCov::Formatter::Console,
  # Want a nice code coverage website? Uncomment this next line!
  # SimpleCov::Formatter::HTMLFormatter
])
SimpleCov.start

RSpec.configure do |config|
  config.after(:suite) do
    puts
    puts "\e[33mHave you considered running rubocop? It will help you improve your code!\e[0m"
    puts "\e[33mTry it now! Just run: rubocop\e[0m"
  end
end

# Set environment to test
ENV["RACK_ENV"] = "test"

# Bring in contents of app.rb file
require File.join(File.dirname(__FILE__), "..", "app.rb")

# Tell Capybara to to talk to RockPaperScissors
Capybara.app = RockPaperScissors
