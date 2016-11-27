class RSP

  def responses(choices)
    if choices.first == choices.last
      "It is a Draw"
    elsif choices.first == "Rock" && choices.last == "Scissors" || choices.first == "Paper" && choices.last == "Rock" || choices.first == "Scissors" && choices.last == "Paper"
      "Well Done, You Win!"
    else
      "Sorry but You Lose"
    end
  end
end
