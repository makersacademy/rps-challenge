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
    if @player.choice == @computer.choice
      "It's a draw!" 
    elsif RESULTS[@player.choice] == @computer.choice
      "You won!" 
    else
      "You lost!"
    end
  end
end
