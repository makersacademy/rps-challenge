class Game

  def random_choice
    ['rock','paper','scissors'].sample
  end

  def who_won(player1, player2)
    if (player1 == "rock" && player2 == "scissors") || (player1 == "scissors" && player2 == "paper") || (player1 == "paper" && player2 == "rock")
      "You won!"
    elsif player1 == player2
      "DRAW!"
    else
      "You lost!"
    end
  end
end
