class Computer

  MOVES = ["Rock", "Paper", "Scissors"]

  attr_reader :move

  def initialize(moves = MOVES)
    @move = moves.sample
  end

end
