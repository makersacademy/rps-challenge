class Computer
  
  attr_reader :name

  ALLOWED_MOVES = ["rock", "paper", "scissors"]
  
  def initialize(name)
    @name = name
  end

  def random_move
    ALLOWED_MOVES.sample
  end


end
