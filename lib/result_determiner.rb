class ResultDeterminer

  RULES = {
  :rock     => { :rock => :draw, :paper => :paper, :scissors => :rock },
  :paper    => { :rock => :paper, :paper => :draw, :scissors => :scissors },
  :scissors => { :rock => :rock, :paper => :scissors, :scissors => :draw }
  }

  def self.calculate(player_1, player_2)
    raise 'Not all players have names' if player_1.name.empty? || player_1.name.empty?
    return :draw if player_1.choice == player_2.choice
    hash = {
      player_1.choice => player_1.name,
      player_2.choice => player_2.name,
     }
    hash[RULES[player_1.choice][player_2.choice]]
  end

end
