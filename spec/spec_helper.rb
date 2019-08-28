require 'capybara/rspec'
require 'simplecov'
require 'simplecov-console'
require 'capybara'
require 'capybara/rspec'
require 'rspec'
require 'features/web_helpers.rb'
# require 'rack/test'
# require 'rspec'
# ENV['RACK_ENV'] = 'test'
# require File.expand_path '../../app.rb', __FILE__
# module RSpecMixin
#   include Rack::Test::Methods
#   def app() Sinatra::Application end
#   end
SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
  SimpleCov::Formatter::Console,
  # Want a nice code coverage website? Uncomment this next line!
  # SimpleCov::Formatter::HTMLFormatter
])
SimpleCov.start

RSpec.configure do |config|
  ENV['RACK_ENV'] = 'test'
  require File.join(File.dirname(__FILE__),'..','app.rb')

  Capybara.app = Play
  config.after(:suite) do
    puts
    puts "\e[33mHave you considered running rubocop? It will help you improve your code!\e[0m"
    puts "\e[33mTry it now! Just run: rubocop\e[0m"
  end
end
