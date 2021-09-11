class Game
  attr_reader :choices

  def initialize
    @choices = ["Rock", "Paper", "Scissors"]
    @winmap = { 'Scissors' => 'Paper', 'Paper' => 'Rock', 'Rock' => 'Scissors' }
  end

  def result(choice1, choice2)
    return "This is a draw" if choice1 == choice2
    @winmap[choice1] == choice2 ? "Player wins" : "Computer wins"
  end

  def random_choice
    @choices.sample
  end
end
