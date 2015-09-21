require_relative 'player'
require_relative 'comp_player'

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
      "It is a tie!"
    elsif @winner == :winner
       "#{player.name}, you are the winner!"
    else
      "#{player.name}, you are the loser!"
    end

  end

end
