require_relative 'player'

class Game 

  attr_reader :player

  def initialize(player)
    @player = player
  end

#need to have user enter a move, feed that move to the model
#need to have a fake player 2 to give a countermove
#need to have one of the moves beat the other move
#need to feed that output to the views and controller
#   beatmap = { 'scissors' => 'paper', 
#                       'paper' => 'rock', 
#                       'rock' => 'scissors' }

# if p1 == p2
#   puts "It's a draw"
# elsif beatmap[p1] == p2
#   puts "Player 1 wins"
# else
#   puts "Player 2 wins"
# end
end