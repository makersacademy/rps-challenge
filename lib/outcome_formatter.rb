#understands how to parse the outcome of a stand-off into a string

class OutcomeFormatter
  def format_outcome(outcome, player_1, player_2)
    if outcome == 0
      "Draw"
    elsif outcome > 0
      "#{player_2.name.capitalize} wins"  
    else
      "#{player_1.name.capitalize} wins"
    end
  end
end
