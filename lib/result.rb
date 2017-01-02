class Result

  def responses(choices)

    win = {:Scissors => :Paper,
           :Paper => :Rock,
           :Rock => :Scissors}


    if choices.first == choices.last
      "It is a draw"
    elsif win[choices.first] == choices.last
      choices.first
    else
      choices.last
    end
  end
end
