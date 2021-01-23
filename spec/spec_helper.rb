require 'capybara/rspec'
require 'simplecov'
require 'simplecov-console'
# require our Sinatra app file
require './app.rb'


SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
  SimpleCov::Formatter::Console,
  # Want a nice code coverage website? Uncomment this next line!
  # SimpleCov::Formatter::HTMLFormatter
])
SimpleCov.start

# For accurate test coverage measurements, require your code AFTER 'SimpleCov.start'

RSpec.configure do |config|
  ENV['RACK_ENV'] = 'test'
  # tell Capybara about our app class
  Capybara.app = RockPaperScissors
end
