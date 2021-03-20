class Game

  attr_reader :player, :computer
  def initialize(player)
    @player = player
    @computer = ["Rock", "Paper", "Scissors"].sample
  end
end
