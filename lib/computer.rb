class Computer
  attr_reader :move

  MOVES = ["Rock", "Paper", "Scissors"]

  def initialize
    @move = ""
  end

  def pick_move
    @move = MOVES.sample
  end
end
