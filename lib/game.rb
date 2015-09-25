require_relative 'player'
require_relative 'comp_player'
require_relative 'result'

class Game

RULES = {
  rock:     {rock: :draw,   paper: :loser,  scissors: :winner, lizard: :winner, spock: :loser},
  paper:    {rock: :winner, paper: :draw,   scissors: :loser,  lizard: :loser,  spock: :winner},
  scissors: {rock: :loser,  paper: :winner, scissors: :draw,   lizard: :winner, spock: :loser},
  lizard:   {rock: :loser,  paper: :winner, scissors: :loser,  lizard: :draw,   spock: :winner},
  spock:    {rock: :winner, paper: :loser,  scissors: :winner, lizard: :loser,  spock: :draw}
}
  def play(player, computer)
    @winner = RULES[player.shape][computer.shape]

    if @winner == :draw
      draw
    elsif @winner == :winner
      winner
    else
      loser
    end
  end

    def draw
      "It is a tie!"
    end

    def winner
      "Congratulations, you are the winner!"
    end

    def loser
      "Sorry, you are the loser!"
    end

end
