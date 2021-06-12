class Computer
  attr_reader :name, :move

  def initialize
    @name = "CPU"
    @move = random_move
  end

  def random_move
    ["rock", "paper", "scissors"].sample
  end
end
