# Generated by cucumber-sinatra. (2015-02-20 13:22:49 +0000)

ENV['RACK_ENV'] = 'test'

require File.join(File.dirname(__FILE__), '..', '..', 'app/server.rb')

require 'capybara'
require 'capybara/cucumber'
require 'rspec'

Capybara.app = RockPaperScissor

class RockPaperScissorWorld
  include Capybara::DSL
  include RSpec::Expectations
  include RSpec::Matchers
end

World do
  RockPaperScissorWorld.new
end
