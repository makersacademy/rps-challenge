class Game 
  attr_reader :move, :c_move

  MOVE = ["Rock", "Paper", "Scissors"]

  def initialize
    @move = move
    @c_move = computer_move
  end

  def computer_move
    MOVE.sample
  end
end
