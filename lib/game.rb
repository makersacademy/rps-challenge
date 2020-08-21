class Game
  RULES = {
    :rock     => { :rock => :draw, :paper => :paper, :scissors => :rock },
    :paper    => { :rock => :paper, :paper => :draw, :scissors => :scissors },
    :scissors => { :rock => :rock, :paper => :scissors, :scissors => :draw }
  }

  def match(player_one, player_two)
    RULES[player_one][player_two]
  end

end
