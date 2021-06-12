class Computer
  attr_reader :name, :move

  def initialize
    @name = "CPU"
    make_random_move
  end

  def make_random_move
    @move = ["rock", "paper", "scissors"].sample
  end
end
