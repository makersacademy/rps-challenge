require_relative 'player'

class Game

  attr_reader :player1, :player2, :choices

  def initialize(playerClass)
    @player1 = initialize_player playerClass
    @player2 = initialize_player playerClass
  end

  def initialize_player playerClass
    player = playerClass.new
    player
  end

  def result
    case 
    when (self.player1.choose == :rock and self.player2.choose == :scissors)
      'Player 1 wins!' 
    else
      'Player 2 wins!'
    end

  end

# rules = { 
#       :rock     => {:rock => :draw, :paper => :paper, :scissors => :rock},
#       :paper    => {:rock => :paper, :paper => :draw, :scissors => :scissors},
#       :scissors => {:rock => :rock, :paper => :scissors, :scissors => :draw}
#     }

#  rules[player1][computer]

end