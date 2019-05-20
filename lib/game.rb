require_relative 'computer'
require_relative 'player'

class Game

  attr_reader :player, :computer

  THROWS = ["rock", "paper", "scissors"]

   def initialize(player, computer)
     @player = player
     @computer = computer
   end

end
