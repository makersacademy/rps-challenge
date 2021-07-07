class Result 
  def outcome(player, comp)
    if player == comp
      "That's a draw!"
    elsif (player == "Scissors" && comp == "Rock") || 
      (player == "Paper" && comp == "Scissors") ||
      (player == "Rock" && comp == "Paper")
      "The computer wins amigo!"
    elsif (player == "Scissors" && comp == "Paper") ||
      (player == "Rock" && comp == "Scissors") ||
      (player == "Paper" && comp == "Rock")
      "You beat the computer amigo!"
    end
  end
end
