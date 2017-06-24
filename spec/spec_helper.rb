ENV['RACK_ENV'] = 'test'

require File.join(File.dirname(__FILE__), '..', 'app', 'rps_app.rb')
require File.join(File.dirname(__FILE__), 'feature_tests', 'web_helper.rb')


require 'capybara/rspec'
require 'simplecov'
require 'simplecov-console'
Capybara.app = RPS

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
  SimpleCov::Formatter::Console,
  # Want a nice code coverage website? Uncomment this next line!
  # SimpleCov::Formatter::HTMLFormatter
])
SimpleCov.start

RSpec.configure do |config|
  config.after(:suite) do

  end
end
