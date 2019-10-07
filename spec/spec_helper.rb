# Added as part of setup.
ENV['RACK_ENV'] = 'test'
require './app'
require 'capybara'
require 'rspec'

# Already included when repo cloned.
require 'capybara/rspec'
require 'simplecov'
require 'simplecov-console'

# added as part of setup - Tell Capybara about our class app.
Capybara.app = RPS

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
