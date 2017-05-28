require_relative 'player'
require_relative 'computer'

class Game

  SHAPES = [:rock, :paper, :scissors]
  WIN_RULES = { rock: :scissors,
              paper: :rock,
              scissors: :paper }

  def result
    WIN_RULES[player_choice][computer.choice()] ? :win : :lose
  end


end
