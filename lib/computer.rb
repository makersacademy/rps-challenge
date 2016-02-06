class Computer
  def initialize
    @choices = ["rock", "paper", "scissors", "lizard", "Spock"]
  end

  def random
    index = rand(5)
    @choices[index]
  end
end