require 'simplecov'
require 'simplecov-console'

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
  SimpleCov::Formatter::Console,
])
SimpleCov.start

ENV['RACK_ENV'] = 'test'
require_relative '../app.rb'
require 'capybara'
require 'rspec'
require 'capybara/rspec'
require_relative './features/web_helpers.rb'

Capybara.app = App


RSpec.configure do |config|
  config.after(:suite) do
    puts
    puts "\e[33mHave you considered running rubocop? It will help you improve your code!\e[0m"
    puts "\e[33mTry it now! Just run: rubocop\e[0m"
  end
end
