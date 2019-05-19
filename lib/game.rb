class Game
  PAIRS = { :rock => :scissors,
            :paper => :rock,
            :scissors => :paper }

  attr_reader :result

  def initialize
    @pairs = PAIRS
  end

  def validate(player1, player2)
    if @pairs[player1] == player2
      :player1
    elsif @pairs[player2] == player1
      :player2
    end
  end
end
