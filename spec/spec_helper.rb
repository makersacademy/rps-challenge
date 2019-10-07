ENV['RACK_ENV'] = 'test'
require 'simplecov'
require 'simplecov-console'
require 'capybara/rspec'
require 'rspec'
require 'web_helpers'
require File.join(File.dirname(__FILE__), '..', 'app.rb')

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
  SimpleCov::Formatter::Console,
  # Want a nice code coverage website? Uncomment this next line!
  # SimpleCov::Formatter::HTMLFormatter
])
SimpleCov.start

Capybara.app = RockPaperScissors

RSpec.configure do |config|
  config.after(:suite) do
    puts
    puts "\e[33mHave you considered running rubocop? It will help you improve your code!\e[0m"
    puts "\e[33mTry it now! Just run: rubocop\e[0m"
  end
end
