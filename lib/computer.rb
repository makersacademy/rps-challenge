class Computer
  attr_reader :move
  def initialize
    @move = ["Rock", "Paper", "Scissors"].sample
  end
end
