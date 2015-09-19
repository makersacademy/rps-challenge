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

end
