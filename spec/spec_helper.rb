require 'capybara/rspec'
require 'simplecov'
require 'simplecov-console'
require "features/web_helpers.rb"
require "capybara"
require "rspec"
require "./app.rb"

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
  SimpleCov::Formatter::Console,
])
SimpleCov.start

require File.join(File.dirname(__FILE__), '..', 'app.rb')

Capybara.app = RPSGame

RSpec.configure do |config|
  config.after(:suite) do
    puts
    puts "\e[33mHave you considered running rubocop? It will help you improve your code!\e[0m"
    puts "\e[33mTry it now! Just run: rubocop\e[0m"
  end
end
