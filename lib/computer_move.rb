
class ComputerMove

  def initialize
    @choices = ["Rock", "Paper", "Scissors"]
  end

  def random
    @choices[rand(0..2)]
  end
end
