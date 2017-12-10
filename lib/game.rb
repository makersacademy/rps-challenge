require_relative "./computer_player"

class Game

  attr_reader :player

   def initialize(player)
     @player=player
     @computer = ComputerPlayer.new

   end
end
