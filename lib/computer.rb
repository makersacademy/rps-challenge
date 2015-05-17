class Computer

  attr_accessor :moves, :won
  def initialize
    @moves = nil
    @won = 0
  end

  def play
    @moves = ["rock", "paper", "scissors"].sample
  end
end

