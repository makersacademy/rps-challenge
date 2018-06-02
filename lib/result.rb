require_relative 'player'
require_relative 'computer'

class Result
  attr_reader :player, :computer

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def determine
    if @player.choice == "paper" && @computer.random_choice == "rock"
      "player wins!"
    end
  end

end
