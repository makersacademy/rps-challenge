class CompOpponent 
  attr_reader :moves
  
  def initialize
    @moves = ["Rock", "Paper", "Scissors"]
  end

  def comp_move
    moves.sample
  end
end
