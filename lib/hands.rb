class Hands

  NORMALSET = {:rock => :scissors, :paper => :rock, :scissors => :paper}

  def show
    NORMALSET.keys
  end

  def player_1_win?(player_1, player_2)
    NORMALSET.values_at(player_1.downcase.intern).first == player_2.downcase.intern
  end

end
