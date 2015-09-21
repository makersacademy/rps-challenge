require_relative 'player'
require_relative 'comp'

class Game

RULES = {
  paper:    {rock: :winner, paper: :draw,  scissors: :loser},
  rock:     {rock: :draw, paper: :loser, scissors: :winner},
  scissors: {rock: :loser, paper: :winner, scissors: :draw}
}
  def play(player, comp)
    @winner = RULES[player.choice][comp.choice]

    if @winner == :draw
      "it's draw"
    elsif @winner == :winner
       "#{player.name}, you won!"
    else
      "#{player.name}, you lost!"
    end

  end

end
