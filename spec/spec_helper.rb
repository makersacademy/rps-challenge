require 'capybara/rspec'
require 'simplecov'
require 'simplecov-console'

require './app/app'
require 'capybara'
require 'rspec'
require 'pry'
# require_relative 'features/web_helpers.rb'

ENV['RACK_ENV'] = 'test'

Capybara.app = RPS_app

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
