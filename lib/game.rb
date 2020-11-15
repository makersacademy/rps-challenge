class Game
  attr_reader :player, :computer_choice

  def initialize(player)
    @player = player
    @computer_choice = ["Rock", "Paper", "Scissors"].sample
  end
end
