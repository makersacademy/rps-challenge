

class Weapons

  attr_reader :weapons

  def initialize
    @weapons = [:scissors, :rock, :paper]
  end

  def rules(selections)
    case selections
    when {:rock => :scissors}
      :player_1_win
    when {:paper => :rock}
      :player_1_win
    when {:scissors => :paper}
      :player_1_win
    when {:scissors => :rock}
      :player_2_win
    when {:rock => :paper}
      :player_2_win
    when {:paper => :scissors}
      :player_2_win
    else
      :draw
    end
  end

end
