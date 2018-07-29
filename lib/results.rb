require_relative 'player'
require_relative 'pc'
 
class Results
  attr_reader :player, :computer
   
  def initialize(player, computer)
    @player = player
    @computer = computer
  end
   
  def umpire
    if @player.move == "rock" && @computer.pc_move == "scissors"
      "#{@player.move.capitalize} beats #{@computer.pc_move}: You rule supreme!"
    end
  end
end
