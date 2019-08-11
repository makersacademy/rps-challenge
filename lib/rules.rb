class Rules

  def rps_rules(player1, player2)
    if (player1 == "Rock" && player2 == "Scissors") || (player1 == "Scissors" && player2 == "Paper") || (player1 == "Paper" && player2 == "Rock")
      "You are the winner"
    elsif player1 == player2
      "That is a draw, play again!"
    else
      "Sorry, next time"
    end
  end
end