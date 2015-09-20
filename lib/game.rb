require_relative 'player'
require_relative 'comp_player'

class Game

RULES = {
  rock:     {rock: :draw, paper: :paper, scissors: :scissors},
  paper:    {rock: :rock, paper: :draw,  scissors: :scissors},
  scissors: {rock: :rock, paper: :paper, scissors: :draw}
}

  def play(player, computer)
    @winner = RULES[player.shape][computer.shape]

    if @winner == :draw
      "It is a tie!"
    elsif player.shape == :rock     && computer.shape == :scissors ||
          player.shape == :paper    && computer.shape == :rock     ||
          player.shape == :scissors && computer.shape == :paper
       "#{player.name}, you are the winner!"
    else
      "#{player.name}, you are the loser!"
    end

  end

  # def winner(player, computer)
  #   @winner = RULES[player.shape][computer.shape]
  # end


end
