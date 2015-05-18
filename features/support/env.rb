# Generated by cucumber-sinatra. (2015-05-17 23:03:15 +0100)

ENV['RACK_ENV'] = 'test'

require File.join(File.dirname(__FILE__), '..', '..', 'lib/rps.rb')

require 'capybara'
require 'capybara/cucumber'
require 'rspec'

Capybara.app = RpsWeb

class RpsWebWorld
  include Capybara::DSL
  include RSpec::Expectations
  include RSpec::Matchers
end

World do
  RpsWebWorld.new
end
