ENV['RACK_ENV'] = 'test'

require_relative './../app'
require 'capybara'
require 'capybara/rspec'
require 'rspec'
require 'features/web_helpers'
require 'simplecov'
require 'simplecov-console'

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([SimpleCov::Formatter::Console])
SimpleCov.start

Capybara.app = RPS
Capybara.save_and_open_page_path = '/Users/stephengeller/Projects/makers-academy/week-three/weekend-challenge/rps-challenge/log'

RSpec.configure do |config|
  config.after(:suite) do
    puts
    puts "\e[33mHave you considered running rubocop? It will help you improve your code!\e[0m"
    puts "\e[33mTry it now! Just run: rubocop\e[0m"
  end
end
