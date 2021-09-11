class Game
  attr_reader :choices

  def initialize
    @choices = ["Rock", "Paper", "Scissors"]
  end

  def result(choice1, choice2)
    return "This is a draw" if choice1 == choice2
    if @choices.find_index(choice1) - 1 == @choices.find_index(choice2)
      "Player wins"
    else  
      "Computer wins"
    end
  end

  def random_choice
    @choices.sample
  end
end
