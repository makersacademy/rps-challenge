# ensure the following is AT THE TOP of your spec_helper.rb to get test coverage stats
require 'simplecov'
require 'simplecov-console'

SimpleCov.formatters = [
  SimpleCov::Formatter::MultiFormatter
]

# replace following line with SimpleCov.start to get coverage stats locally
SimpleCov.start
# run `open coverage/index.html` from the command line to view details

RSpec.configure do |config|
  config.after(:suite) do
    puts
    puts "\e[33mHave you considered running rubocop? It will help you improve your code!\e[0m"
    puts "\e[33mTry it now! Just run: rubocop\e[0m"
  end
end

ENV['RACK_ENV'] = 'test'

require File.join(File.dirname(__FILE__), '..', 'app.rb')
require 'capybara/rspec'
require 'capybara'
require 'rspec'
require 'features/web_helpers'

Capybara.app = RPS
