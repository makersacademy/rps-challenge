
 ENV['RACK_ENV'] = 'test'

 # require our Sinatra app file
 require File.join(File.dirname(__FILE__), '..', 'RPS.rb')

 require 'capybara'
 require 'capybara/rspec'
 require 'rspec'
 require 'web_helpers.rb'

 module RSpecMixin
  include Rack::Test::Methods
  def app() Sinatra::Application end
 end

 RSpec.configure do |config|
   config.include RSpecMixin
 end
 # tell Capybara about our app class
 Capybara.app = RPS

# ENV['RACK_ENV'] = 'test'
#
# require 'capybara/rspec'
# require 'simplecov'
# require 'simplecov-console'
#
# # Capybara.app = RPS
#
# SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
#   SimpleCov::Formatter::Console,
#   # Want a nice code coverage website? Uncomment this next line!
#   SimpleCov::Formatter::HTMLFormatter
# ])
# SimpleCov.start
#
# RSpec.configure do |config|
#   config.after(:suite) do
#     puts
#     puts "\e[33mHave you considered running rubocop? It will help you improve your code!\e[0m"
#     puts "\e[33mTry it now! Just run: rubocop\e[0m"
#   end
# end
