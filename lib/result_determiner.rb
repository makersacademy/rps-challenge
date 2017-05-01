
class ResultDeterminer

  RULES = {
  :rock     => { :rock => :draw, :paper => :paper, :scissors => :rock,
    :lizard => :rock, :spock => :spock },
  :paper    => { :rock => :paper, :paper => :draw, :scissors => :scissors,
    :lizard => :lizard, :spock => :paper },
  :scissors => { :rock => :rock, :paper => :scissors, :scissors => :draw,
    :lizard => :scissors, :spock => :spock },
  :spock => { :rock => :spock, :paper => :paper, :lizard => :lizard,
    :spock => :draw, :scissors => :spock },
  :lizard => { :lizard => :draw, :paper => :lizard, :scissors => :scissors,
    :spock => :lizard, :rock => :rock }
  }

  def self.calculate(player_1, player_2)
    return :draw if player_1.choice == player_2.choice
    hash = {
      player_1.choice => player_1.name,
      player_2.choice => player_2.name,
     }
    hash[RULES[player_1.choice][player_2.choice]]
  end

end
