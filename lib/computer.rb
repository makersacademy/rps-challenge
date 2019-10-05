class Computer
  attr_reader :move
  def initialize
    @move = ["Rock", "Paper", "Scissors"][rand(3)]
  end
end
