class Computer

  attr_reader :moves
  def initialize
    @moves = ["rock", "paper", "scissors"]
  end

  def choose_random
    moves.sample
  end
end
