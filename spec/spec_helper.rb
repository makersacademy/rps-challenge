ENV['RACK_ENV'] = 'test'

require './app/rps'
require 'capybara/rspec'
require 'simplecov'
require 'simplecov-console'
require 'features/web_helpers'

Capybara.app = Rps

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
  SimpleCov::Formatter::Console])
SimpleCov.start

RSpec.configure do |config|
  config.after(:suite) do
  end
end
