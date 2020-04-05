class Game

attr_reader :player, :computer

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def decide_winner
    if @player == @computer
      "It's a draw"
    else
      "computer wins"
    end
  end
end
