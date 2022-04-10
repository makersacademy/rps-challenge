class Computer
  attr_reader :move, :name

  def initialize
    @name = nil
  end

  def random_move
    @move = ["Rock", "Paper", "Scissors"].sample
  end
end
