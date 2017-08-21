class Computer
  attr_reader :comp

  def initialize
    @comp = random
  end

private
  def random
    ["rock", "paper", "scissors", "spock", "lizard"].sample
  end
end
