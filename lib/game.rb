class Game

attr_reader :player, :computer

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def decide_winner
    "computer wins"
  end



end
