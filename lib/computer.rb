class Computer
  attr_reader :action

  def initialize
    @action = random_action
  end

  def random_action
    ["rock", "paper", "scissors"].sample
  end
end
