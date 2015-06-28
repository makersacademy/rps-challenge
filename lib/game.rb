require_relative 'player'
require_relative 'computer'

class Game

  attr_reader :player1, :player2

  def initialize(playerClass)
    @player1 = initialize_player playerClass
    @player2 = initialize_player playerClass
  end

  def initialize_player playerClass
    player = playerClass.new
    player
  end

# rules = { 
#       :rock     => {:rock => :draw, :paper => :paper, :scissors => :rock},
#       :paper    => {:rock => :paper, :paper => :draw, :scissors => :scissors},
#       :scissors => {:rock => :rock, :paper => :scissors, :scissors => :draw}
#     }

#  rules[player1][computer]

end