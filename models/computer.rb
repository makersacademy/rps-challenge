class Computer

  def initialize
    @moves = ["Rock", "Paper", "Scissors"]
  end

  def computer_move
    @moves.sample
  end

end
