require_relative 'player'
require_relative 'computer'

class Game

  RULES = { rock: :scissors,
            paper: :rock,
            scissors: :paper }

  WEAPONS = [:rock, :paper, :scissors]

  def result(player, computer)
    player.player_choice == computer.comp_choice ? :draw :
    RULES[player.player_choice] == computer.comp_choice ? :win : :lose
  end

end
