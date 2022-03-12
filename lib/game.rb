class Game
  def cpu_move
    @cpu_move = ['rock','paper','scissors'].sample
  end

  def gameplay(move)
    possible_outcomes = [
    "CPU chose paper. Paper wraps rock. You lose.",
    "CPU chose scissors. Rock destroys scissors. You win.",
    "CPU chose rock. Paper wraps rock. You win.",
    "CPU chose scissors. Scissors cut paper. You lose.",
    "CPU chose rock. Rock destroys scissors. You lose.",
    "CPU chose paper. Scissors cut paper. You win.",
    "CPU chose the same move. It's a tie."
    ]

    if move == "rock" && @cpu_move == "paper"; possible_outcomes[0]
    elsif move == "rock" && @cpu_move == "scissors"; possible_outcomes[1]
    elsif move == "paper" && @cpu_move == "rock"; possible_outcomes[2]
    elsif move == "paper" && @cpu_move == "scissors"; possible_outcomes[3]
    elsif move == "scissors" && @cpu_move == "rock"; possible_outcomes[4]
    elsif move == "scissors" && @cpu_move == "paper"; possible_outcomes[5]
    else; possible_outcomes[6]
    end
  end
end

      