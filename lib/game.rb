require_relative 'player'
require_relative 'comp_player'

class Game

RULES = {
  rock:     {rock: :draw, paper: :paper, scissors: :rock},
  paper:    {rock: :paper, paper: :draw,  scissors: :scissors},
  scissors: {rock: :rock, paper: :scissors, scissors: :draw}
}

  def play(player, computer)
    RULES[player.shape][computer.choice]
  end

  def winner(player, computer)
    @winner = RULES[player.shape][computer.choice]

    if @winner == :draw
      "It is a tie!"
    elsif player.shape == :rock     && computer.choice == :scissors ||
          player.shape == :paper    && computer.choice == :rock     ||
          player.shape == :scissors && computer.choice == :paper
       "#{player.name}, you are the winner!"
    else
      "#{player.name}, you are the loser!"
    end
    
  end

end
