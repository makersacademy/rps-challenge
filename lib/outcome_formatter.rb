#understands how to parse the outcome of a stand-off into a string

class OutcomeFormatter
  def format_outcome(outcome, player_1, player_2)
    case outcome
      when  0 then "Draw"  
      when  1 then "#{player_2.name.capitalize} wins"  
      when -1 then "#{player_1.name.capitalize} wins"
    end
  end
end
