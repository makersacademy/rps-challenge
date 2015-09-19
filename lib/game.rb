class Game

RULES = {
  :rock     => {:rock => :draw, :paper => :paper, :scissors => :rock},
  :paper    => {:rock => :paper, :paper => :draw,  :scissors => :scissors},
  :scissors => {:rock => :rock, :paper => :scissors, :scissors => :draw}
}

  def play(p1, p2)
    RULES[p1][p2]
  end

end
