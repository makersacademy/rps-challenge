class Spock
  def winner(player2turn, player1name, player2name)
    case player2turn
    when "Rock" then @winner = player1name
    when "Paper" then @winner = player2name
    when "Scissors" then @winner = player1name
    when "Spock" then @winner = "Nobody won - TIE"
    when "Lizard" then @winner = player2name
    end
  end

  def explanation(player2turn)
    case player2turn
    when "Rock" then @explanation = "Spock vapourises Rock!"
    when "Paper" then @explanation = "Paper disproves Spock!"
    when "Scissors" then @explanation = "Spock smashes Scissors!"
    when "Spock" then @explanation = "Great minds think alike!"
    when "Lizard" then @explanation = "Lizard poisons Spock!"
    end
  end
end
