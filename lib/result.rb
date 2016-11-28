class Result

  def responses(choices)

    win = {:Scissors => :Paper,
           :Paper => :Rock,
           :Rock => :Scissors}


    if choices.first == choices.last
      "It is a Draw"
    elsif win[choices.first] == choices.last
      "Well Done, You Win!"
    else
      "Sorry but You Lose"
    end
  end
end
