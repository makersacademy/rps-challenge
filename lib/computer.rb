class Computer
  
  attr_reader :name, :choice

  ALLOWED_MOVES = ["rock", "paper", "scissors"]
  
  def initialize(name)
    @name = name
    @choice = nil
  end

  def choose
    @choice = ALLOWED_MOVES.sample
  end

end
