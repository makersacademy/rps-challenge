class Game
  attr_reader :choices

  def initialize
    @choices = ["Rock", "Paper", "Scissors"]
  end

  def result(choice1, choice2)
    @choices.find_index(choice1) - 1 == @choices.find_index(choice2) ? "Player 1 wins" : "Player 2 wins"
  end

  def random_choice
    @choices.sample
  end
end