class Result


attr_reader :game_result

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

  def final_result(result)
    @game_result = result
  end
end
