class Game

 WINNING_COMBINATIONS = {
    :rock     => { :rock => :draw, :paper => :lose, :scissors => :win },
    :paper    => { :rock => :win, :paper => :draw, :scissors => :lose },
    :scissors => { :rock => :lose, :paper => :win, :scissors => :draw },
  }

  def result(player, computer)
    WINNING_COMBINATIONS[player][computer]
  end
1
end