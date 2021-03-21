class Lizard
  def winner(player2turn, player1name, player2name)
    case player2turn
    when "Rock" then @winner = player2name
    when "Paper" then @winner = player1name
    when "Scissors" then @winner = player2name
    when "Spock" then @winner = player1name
    when "Lizard" then @winner = "Nobody won - TIE"
    end
  end

  def explanation(player2turn)
    case player2turn
    when "Rock" then @explanation = "Rock crushes Lizard!"
    when "Paper" then @explanation = "Lizard eats Paper!"
    when "Scissors" then @explanation = "Scissors cut Lizard's head off!"
    when "Spock" then @explanation = "Lizard poisons Spock!"
    when "Lizard" then @explanation = "Great minds think alike!"
    end
  end
end
