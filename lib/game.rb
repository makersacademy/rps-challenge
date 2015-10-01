require_relative 'player'
require_relative 'comp_player'

class Game

  attr_reader :draw

RULES = {
  rock:     {rock: :draw,   paper: :loser,  scissors: :winner, lizard: :winner, spock: :loser},
  paper:    {rock: :winner, paper: :draw,   scissors: :loser,  lizard: :loser,  spock: :winner},
  scissors: {rock: :loser,  paper: :winner, scissors: :draw,   lizard: :winner, spock: :loser},
  lizard:   {rock: :loser,  paper: :winner, scissors: :loser,  lizard: :draw,   spock: :winner},
  spock:    {rock: :winner, paper: :loser,  scissors: :winner, lizard: :loser,  spock: :draw}
}

  def play(player, computer)
    self.send(RULES[player.shape][computer.shape])
  end

  def draw
    "It is a tie!"
  end

  def winner
    "Congratulations, you are the #{__method__}!"
  end

  def loser
    "Sorry, you are the loser!"
  end

  # alias_method :loser, :winner

end
