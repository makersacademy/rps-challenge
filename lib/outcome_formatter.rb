class OutcomeFormatter
  def format_outcome(outcome)
    case outcome
      when  0 then 'draw'  
      when  1 then 'player 2 wins'  
      when -1 then 'player 1 wins'  
    end
    
  end
end
