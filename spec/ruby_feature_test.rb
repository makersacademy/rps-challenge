require_relative '../lib/player.rb'
require_relative '../lib/game.rb'
require 'pry'
p1 = Player.new('Charlie')
p2 = Player.new('Roxanne')
game = Game.create(p1, p2)
game.make_player_choice("Paper")
game.switch_turn
game.make_player_choice("Scissors")
game.results_message

