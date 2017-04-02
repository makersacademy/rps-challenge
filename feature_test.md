require './lib/game.rb'
require './lib/player.rb'
require './lib/computer'
player = Player.new("Connie")
computer = Computer.new
game = Game.new(player, computer)
