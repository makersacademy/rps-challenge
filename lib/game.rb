class Game

  attr_reader :player, :computer

  RESULTS = {
    rock: :scissors,
    paper: :rock,
    scissors: :paper
  }.freeze

  def initialize(player, computer)
    @player = player
    @computer = computer
  end
  
  def game_over
    return "It's a draw!" if @player.choice == @computer.choice
    RESULTS[@player.choice] == @computer.choice ?
    "Player wins!" : "Computer wins!"
  end
end
