require './lib/computer'

class Game

  OPTIONS = [:Rock, :Paper, :Scissors]
  RULES = {
    Rock: :Scissors,
    Paper: :Rock,
    Scissors: :Paper
  }

  def result
  end

  def win
    'Congratulations, you won!'
  end

  def draw
    "It's a draw!"
  end

  def lose
    "Unlucky, you lost!"
  end
end
