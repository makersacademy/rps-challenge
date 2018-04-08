class Roshambo

  attr_reader :input

  def initialize(input)
    @input = input
  end

  def roll
    data = ["Rock", "Paper", "Scissors"]
    data[Kernel.rand(0..2)]
  end

  def evaluate(roll)
    # rock > scissors > paper


  end
end
