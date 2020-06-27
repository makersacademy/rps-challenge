class Result 
  def outcome(player, computer)
    if player == computer
      "That's a draw!"
    elsif (player == "Scissors" && computer == "Rock") || 
      (player == "Paper" && computer == "Scissors") ||
      (player == "Rock" && computer == "Paper")
      "The computer wins amigo!"
    else (player == "Scissors" && computer == "Paper") ||
    (player == "Rock" && computer == "Scissors") ||
    (player == "Paper" && computer == "Rock")
    "You beat the computer amigo!"
    end
  end
end