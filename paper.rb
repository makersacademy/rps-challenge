class Paper
  def winner(player2turn, player1name, player2name)
    case player2turn
    when "Rock" then @winner = player1name
    when "Paper" then @winner = "Nobody won - TIE"
    when "Scissors" then @winner = player2name
    when "Spock" then @winner = player1name
    when "Lizard" then @winner = player2name
    end
  end

  def explanation(player2turn)
    case player2turn
    when "Rock" then @explanation = "Paper covers Rock!"
    when "Paper" then @explanation = "Great minds think alike!"
    when "Scissors" then @explanation = "Scissors cut Paper!"
    when "Spock" then @explanation = "Paper disproves Spock!"
    when "Lizard" then @explanation = "Lizard eats Paper!"
    end
  end
end
