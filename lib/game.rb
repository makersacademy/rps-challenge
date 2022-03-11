class Game
  def cpu_move
    @cpu_move = ['rock','paper','scissors'].sample
  end

  def gameplay(move)
    if move == "rock" && @cpu_move == "paper"
      false
      "CPU chose paper. Paper wraps rock. You lose."
    elsif move == "rock" && @cpu_move == "scissors"
      true
      "CPU chose scissors. Rock destroys scissors. You win."
    elsif move == "paper" && @cpu_move == "rock"
      true
      "CPU chose rock. Paper wraps rock. You win."
    elsif move == "paper" && @cpu_move == "scissors"
      false
      "CPU chose scissors. Scissors cut paper. You lose."
    elsif move == "scissors" && @cpu_move == "rock"
      true
      "CPU chose rock. Rock destroys scissors. You lose."
    elsif move == "scissors" && @cpu_move == "paper"
      false
      "CPU chose paper. Scissors cut paper. You win."
    end
  end
end

      