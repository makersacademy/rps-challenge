require_relative 'player'
require_relative 'computer'

class Game

  RULES = {
   rock:     {rock: :draw, paper: :paper, scissors: :rock},
   paper:    {rock: :paper, paper: :draw,  scissors: :scissors},
   scissors: {rock: :rock, paper: :scissors, scissors: :draw}
  }

  def play(player, computer)
    RULES[player.object][computer.auto]
  end
end
