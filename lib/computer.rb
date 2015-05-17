class Computer

  attr_accessor :moves
  def initialize
    @moves = nil
  end

  def play
    @moves = ["rock", "paper", "scissors"].sample
  end
end

