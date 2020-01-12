class Rules

  def result(player_move, computer_move)
    
    if 
      (player_move == "Rock" && computer_move == "Scissors") || 
      (player_move == "Paper" && computer_move == "Rock") ||
      (player_move == "Scissors" && computer_move == "Paper") 
      "Wins"

    elsif 
      player_move == computer_move 
      "Draw"

    else 
      "Loss"

    end
  end
end