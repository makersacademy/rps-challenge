ENV['RACK_ENV'] = 'test'
require File.join(File.dirname(__FILE__), '..','app', 'rps_web.rb')
require 'capybara/rspec'
require 'simplecov'
require 'capybara'
require 'rspec'
require 'simplecov-console'
require './spec/features/web_helper.rb'
Capybara.app = RPSWeb
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
