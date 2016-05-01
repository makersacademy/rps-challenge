require './lib/game.rb'
require './lib/player.rb'

player_1 = Player.new("Jack")
game = Game.new(player_1)

# p result = "scissors".to_sym
# p computer_result = game.computer_draw
#
# p game.play(result,computer_result)
p game = game.play(:rock)
