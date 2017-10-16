require File.join(File.dirname(__FILE__), '..', 'app.rb')

require 'capybara/rspec'
require 'capybara'
require 'rspec'
require 'simplecov'
require 'simplecov-console'

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
                                                                 SimpleCov::Formatter::Console,
                                                                 # Want a nice code coverage website? Uncomment this next line!
                                                                 # SimpleCov::Formatter::HTMLFormatter
                                                               ])
SimpleCov.start

ENV['RACK_ENV'] = 'test'
Capybara.app = RockPaperScissors
