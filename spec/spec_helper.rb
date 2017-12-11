ENV['RACK_ENV'] = 'test'
require 'capybara/rspec'
require 'rspec'
require 'capybara'
require 'simplecov'
require 'simplecov-console'
require_relative '../lib/game'
require_relative '../lib/player'
require_relative './features/web_helpers'
require File.expand_path '../../app.rb', __FILE__

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

Capybara.app = RPS
