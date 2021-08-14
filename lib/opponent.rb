# Responsible for choosing a move. Has a name.

class Opponent 
  attr_reader :opponent_move

  def initialize
    @opponent_move = ["Rock", "Paper", "Scissors"].sample
  end
end
