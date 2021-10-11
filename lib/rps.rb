module Action
  def compare(player1, player2)
    if player1 == player2
      "It's a draw"
    elsif (player1 == "rock" && player2 == "scissors") || (player1 == "scissors" && player2 == "paper") || (player1 == "paper" && player2 == "rock")
      "Player 1 wins"
    else
      "Player 2 wins"
    end
  end
end
