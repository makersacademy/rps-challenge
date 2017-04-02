require_relative 'player'

class Game

  attr_reader :player1, :player2

  WEAPONS = [:rock, :paper, :scissors]

  RULES = { rock: :scissors,
          paper: :rock,
          scissors: :paper }

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def result
    if RULES[player1.choice] == player2.choice
      :win
    elsif RULES[player2.choice] == player1.choice
      :lose
    elsif player1.choice == player2.choice
      :draw
    end
  end
end
