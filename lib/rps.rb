class RPS

  def result(player_move, computer_move)
    if player_move == computer_move 
      "It's a draw!"
    elsif (player_move == "rock" && computer_move == "scissors") ||
      (player_move == "scissors" && computer_move == "paper") ||
      (player_move == "paper" && computer_move == "rock")
      "You win!"
    elsif (player_move == "scissors" && computer_move == "rock") ||
      (player_move == "paper" && computer_move == "scissors") ||
      (player_move == "rock" && computer_move == "paper")
      "Computer wins!"
    end
  end
end
