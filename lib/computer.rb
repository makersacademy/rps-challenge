class Computer
  def initialize
    @choices = ["rock", "paper", "scissors"]
  end

  def random
    index = rand(3)
    @choices[index]
  end
end