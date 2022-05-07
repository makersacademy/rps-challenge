class Judge

  def decision(player1, player2)
    return draw if player1.choice == player2.choice
    case player1.choice
    when "rock"
      player2.choice == "scissors" ? player1_wins(player1, player2) : player2_wins(player1, player2)
    when "paper"
      player2.choice == "rock" ? player1_wins(player1, player2) : player2_wins(player1, player2)
    when "scissors"
      player2.choice == "paper" ? player1_wins(player1, player2) : player2_wins(player1, player2)
    end
  end

  def player1_wins(player1, _player2)
    "#{player1.name}, you won this time. Congratulations!! Do you want to play again?"
  end

  def player2_wins(player1, _player2)
    "#{player1.name}, you lost this time but please, try again"
  end

  def draw
    "It is a draw. Do you want to play again?"
  end

end
