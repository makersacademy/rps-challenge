# require 'simplecov'
# require 'simplecov-console'

# SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
#   SimpleCov::Formatter::Console
#   # Want a nice code coverage website? Uncomment this next line!
#   # SimpleCov::Formatter::HTMLFormatter
# ])
# SimpleCov.start

require 'coveralls'
Coveralls.wear!

require 'capybara/rspec'
require_relative 'feature/web_helpers'
require_relative '../app'
require 'player'
require 'game'
require 'computer'

ENV['RACK_ENV'] = 'test'
Capybara.app    = RockPaperScissors

# For accurate test coverage measurements, require your code AFTER 'SimpleCov.start'

# RSpec.configure do |config|
#   config.after(:suite) do
#     puts
#     puts "\e[33mHave you considered running rubocop? It will help you improve your code!\e[0m"
#     puts "\e[33mTry it now! Just run: rubocop\e[0m"
#   end
# end
