require_relative 'player'
require_relative 'computer'

class Game 

  attr_reader :player
   RULES = { scissors: :paper,
                    paper: :rock,
                    rock: :scissors }

  WEAPONS = [:rock, :paper, :scissors]

  def initialize(player)
    @player = player
    @computer = Computer.new.move
  end

#need to have user enter a move, feed that move to the model
#need to have a fake player 2 to give a countermove
#need to have one of the moves beat the other move
#need to feed that output to the views and controller
def result
  if @player == @computer  
    "It's a draw!"
  elsif RULES[@player] == @computer
    "Congratulations, you win!"
  else 
    "Sorry, you lost! Better luck next time."
end


end