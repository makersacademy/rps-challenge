class CompOpponent 
  attr_reader :moves, :rand_move
  
  def initialize
    @moves = ["Rock", "Paper", "Scissors"]
  end
  
  def comp_move
    @rand_move = moves.sample
  end
end
