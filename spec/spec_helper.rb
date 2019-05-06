
require 'capybara'
require 'capybara/rspec'
require 'rspec'
require 'simplecov'
require 'simplecov-console'
require './spec/features/web_helpers_spec'
require 'shields_badge'

require File.join(File.dirname(__FILE__), '..', 'app.rb') # requires sinatra app file
ENV['RACK_ENV'] ||= 'test' 
Capybara.app = Game

SimpleCov.start
SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter[
  SimpleCov::Formatter::ShieldsBadge,
  SimpleCov::Formatter::Console,
]