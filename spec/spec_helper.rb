require 'simplecov'
require 'capybara'
require 'capybara/rspec'
require 'rspec'
require_relative '../lib/app.rb'
require_relative './web_helpers.rb'
require_relative './web_helpers.rb'
require 'simplecov-console'

Capybara.app = RPS
ENV['RACK_ENV'] = 'test'

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
