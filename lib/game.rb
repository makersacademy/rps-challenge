require_relative 'player'
require_relative 'computer'

class Game
  attr_reader :player1, :player2

  WEAPONS = [:rock, :paper, :scissors]

  RULES = {
    rock: :scissors,
    paper: :rock,
    scissors: :paper
  }

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def beats?(weapon1, weapon2)
    RULES[weapon1] == weapon2
  end

  def result
    choice1 = player1.weapon
    choice2 = player2.weapon
    if beats?(choice1, choice2)
      :win
    elsif beats?(choice2, choice1)
      :lose
    else
      :draw
    end
  end
end
