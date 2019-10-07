class RandomSelection

  attr_reader :computer_choice

  SELECTION = ["rock", "paper", "scissors"]

  def initialize
    @computer_choice = SELECTION.sample
  end
end
