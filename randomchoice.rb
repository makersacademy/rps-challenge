class RandomChoice
  attr_reader :random
def new
  @random = ["rock", "scissors", "paper"].sample
end
end
