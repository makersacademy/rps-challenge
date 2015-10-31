class GameWinner

WINNERS = { :rock => :scissors,
            :paper => :rock,
            :scissors => :paper
          }

  def initialize(player1, player2)
    @player1_hand = player1.hand
    @player2_hand = player2.hand
  end 

end