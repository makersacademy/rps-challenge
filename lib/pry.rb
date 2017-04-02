require "capybara/dsl"
require "selenium-webdriver"
include Capybara::DSL
Capybara.default_driver = :selenium
rackup -p 9292

require './lib/game.rb'
dave = Player.new("Dave")
hal = Player.new("Hal")
rps = Game.new(dave, hal)
rps.player1.rock
rps.player2.scissors
rps.win?
