ENV['RACK_ENV'] = 'test'
require File.join(File.dirname(__FILE__), '..', 'app.rb')
require 'capybara/rspec'
require 'simplecov'
require 'simplecov-console'
require 'features/web_helpers'
Capybara.app = RPS_Game

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
  SimpleCov::Formatter::Console,
  # Want a nice code coverage website? Uncomment this next line!
  # SimpleCov::Formatter::HTMLFormatter
])
SimpleCov.start

# For accurate test coverage measurements, require your code AFTER 'SimpleCov.start'



RSpec.configure do |config|
  config.after(:suite) do
    puts
  end
end
