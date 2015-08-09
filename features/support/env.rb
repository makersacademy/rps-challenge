# Generated by cucumber-sinatra. (2015-08-07 20:28:26 +0100)

ENV['RACK_ENV'] = 'test'

require File.join(File.dirname(__FILE__), '..', '..', 'lib/rockpaperscissors_web.rb')

require 'capybara'
require 'capybara/cucumber'
require 'rspec'

Capybara.app = RPSWeb

class RPSWebWorld
  include Capybara::DSL
  include RSpec::Expectations
  include RSpec::Matchers
end

World do
  RPSWebWorld.new
end

Before do
  $player_1 = nil
  $player_2 = nil
end
