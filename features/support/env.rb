# Generated by cucumber-sinatra. (2015-04-05 06:03:34 +0100)

ENV['RACK_ENV'] = 'test'

require File.join(File.dirname(__FILE__),
                  '..', '..', 'lib/rock_paper_scissors.rb')

require 'capybara'
require 'capybara/cucumber'
require 'rspec'

Capybara.app = RockPaperScissors

class RockPaperScissorsWorld
  include Capybara::DSL
  include RSpec::Expectations
  include RSpec::Matchers
end

World do
  RockPaperScissorsWorld.new
end
