module Rules
  OUTCOMES ={
    :rock => {:rock => :draw, :paper => :paper, :scissors => :rock, :lizard => :rock, :spock => :spock},
    :scissors => {:rock => :rock, :paper => :scissors, :scissors => :draw, :lizard => :scissors, :spock => :spock},
    :paper => {:rock => :paper, :paper => :draw, :scissors => :scissors, :lizard => :lizard, :spock => :paper},
    :lizard => {:rock => :rock, :paper => :lizard, :scissors => :scissors, :lizard => :draw, :spock => :lizard},
    :spock => {:rock => :spock, :paper => :paper, :scissors => :spock,:lizard => :lizard, :spock => :draw}
  }
end
