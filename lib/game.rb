require_relative './computer'

class Game

  def initialize(random = Computer.new)
    @random = random
  end

  def player_score
    "Rock"
  end

  def result1
    if player_score && @random.random == "Paper"
      "You won!"
    elsif player_score && @random.random == "Scissors"
      "You lost!"
    end
  end

end
