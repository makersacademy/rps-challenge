class Game
  RULES = {
    :rock     => { :rock => :draw, :paper => :lose, :scissors => :win },
    :paper    => { :rock => :win, :paper => :draw, :scissors => :lose },
    :scissors => { :rock => :lose, :paper => :win, :scissors => :draw },
  }

  def result(player_one, player_two)
    RULES[player_one.to_sym][player_two.to_sym]
  end
end
