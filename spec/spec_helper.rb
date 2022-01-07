ENV['RACK_ENV'] = 'test' #setting the environment to test. We do this as part of steps to configure Capybara, which configures our tests. 

require File.join(File.dirname(__FILE__), '..', 'app.rb') # Bring in the contents of the `app.rb` file. The below is equivalent to: require_relative '../app.rb'

# the testing gems
require 'capybara'
require 'capybara/rspec'
require 'rspec'

# the test coverage gems:
require 'simplecov' 
require 'simplecov-console'

require 'features/web_helpers' # putting reusable code as methods into web_helpers.rb will help dry up our spec files

Capybara.app = RockPaperScissors # Tell Capybara to talk to RockPaperScissors i.e any instructions like visit('/') should be directed at the application called RockPaperScissors

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
    puts "\e[33mHave you considered running rubocop? It will help you improve your code!\e[0m"
    puts "\e[33mTry it now! Just run: rubocop\e[0m"
  end
end
