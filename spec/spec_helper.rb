ENV['RACK_ENV'] = 'test'

require File.join(File.dirname(__FILE__), '..', 'app.rb' )

require 'capybara/rspec'
require 'simplecov'
require 'simplecov-console'

def sign_in_and_play
  visit("/")
  fill_in('player_one', with: 'jake')
  click_button('Submit')
end

Capybara.app = RockPaperScissors 

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
  SimpleCov::Formatter::Console,
  # Want a nice code coverage website? Uncomment this next line!
  # SimpleCov::Formatter::HTMLFormatter
])
SimpleCov.start

RSpec.configure do |config|
  config.after(:suite) do
    puts
    # puts "\e[33mHave you considered running rubocop? It will help you improve your code!\e[0m"
    # puts "\e[33mTry it now! Just run: rubocop\e[0m"
  end
end