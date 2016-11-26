class RSP

  def responses(choices)
    if choices.first == choices.last
      "Draw"
    elsif choices.first == :rock && choices.last == :scissors || choices.first == :paper && choices.last == :rock || choices.first == :scissors && choices.last == :paper
      "You won"
    else
      "You lose"
    end

  end


end
