# Generated by cucumber-sinatra. (2015-02-20 12:01:46 +0000)

ENV['RACK_ENV'] = 'test'

require File.join(File.dirname(__FILE__), '..', '..', 'app/server.rb')

require 'capybara'
require 'capybara/cucumber'
require 'rspec'

Capybara.app = RockPaperScisors

class RockPaperScisorsWorld
  include Capybara::DSL
  include RSpec::Expectations
  include RSpec::Matchers
end

World do
  RockPaperScisorsWorld.new
end
