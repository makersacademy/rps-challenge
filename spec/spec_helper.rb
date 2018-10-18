require 'simplecov'
SimpleCov.start

require 'codecov'
SimpleCov.formatter = SimpleCov::Formatter::Codecov

require 'capybara'
require 'capybara/rspec'
require_relative '../app'
require_relative 'features/web_helpers'

ENV['RACK_ENV'] = 'test'

Capybara.app = RockPaperScissors

RSpec.configure do |config|
  config.after(:suite) do
    puts
    puts "\e[33mHave you considered running rubocop? It will help you improve your code!\e[0m"
    puts "\e[33mTry it now! Just run: rubocop\e[0m"
  end
end
