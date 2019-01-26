class Game

  def initialize
  end

  def random_calculator
    rand[1, 2, 3]
  end

  def computer_choice
    "Rock" if random_calculator == 1
    "Paper" if random_calculator == 2
    "Scissors" if random_calculator == 3
  end
end
