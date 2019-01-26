ENV['RACK_ENV'] = 'test'

require File.join(File.dirname(__FILE__), '..', 'app.rb')

require 'capybara'
require 'capybara/rspec'
require 'capybara/dsl'
require 'simplecov'
require 'simplecov-console'
require 'rspec'
require 'web_helpers'

Capybara.app = RockPaperScissors

include Capybara::DSL

=begin

Include the Capybara DSL module so it can be used in your web_helpers or srp model/classes.
The reason being that Capybara rspec only provides a dsl language for the rspec files and not
our other program parts like the classes. Can also include it as a RSpec.configure

=end

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
