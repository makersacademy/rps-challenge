require "capybara/dsl"
require "selenium-webdriver"
include Capybara::DSL
Capybara.default_driver = :selenium
rackup -p 9292

require './lib/game.rb'
