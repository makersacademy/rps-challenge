class Computer

  RPS = ["rock", "paper", "scissors"]

  attr_reader :weapon

  def random_choice
    @weapon = RPS.sample
  end
end
