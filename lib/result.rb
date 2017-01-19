class Result


attr_reader :game_result

  def responses(choices)

    win = {:Scissors => :Paper,
           :Paper => :Rock,
           :Rock => :Scissors}


    if choices.first == choices.last
      final_result(:draw)
    elsif win[choices.first] == choices.last
      final_result(:win)
    else
      final_result(:lost)
    end
  end

  def final_result(result)
    @game_result = result
  end
end
