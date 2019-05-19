class Game
  PAIRS = { :rock => :scissors,
            :paper => :rock,
            :scissors => :paper }

  def initialize
    @pairs = PAIRS
  end

  def winner(player1, player2)
    if @pairs[player1] == player2
      :player1
    elsif @pairs[player2] == player1
      :player2
    end
  end
end
