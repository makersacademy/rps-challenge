# Responsible for choosing a move. Has a name.

class Opponent 
  attr_reader :move

  def initialize
    @move = ["Rock", "Paper", "Scissors"].sample
  end
end
