class Game
  attr_reader :computer_choice

  def initialize
    @computer_choice = nil
    @choices = ["Rock", "Paper", "Scissors"]
  end

  def get_random_choice
    @choices.sample
  end
end