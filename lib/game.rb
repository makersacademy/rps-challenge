require_relative 'player'
require_relative 'comp_player'

class Game

RULES = {
  rock:     {rock: :draw, paper: :loser, scissors: :winner},
  paper:    {rock: :winner, paper: :draw,  scissors: :loser},
  scissors: {rock: :loser, paper: :winner, scissors: :draw}
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
