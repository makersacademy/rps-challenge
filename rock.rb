class Rock
  def winner(player2turn, player1name, player2name)
    case player2turn
    when "Rock" then @winner = "Nobody won - TIE"
    when "Paper" then @winner = player2name
    when "Scissors" then @winner = player1name
    when "Spock" then @winner = player2name
    when "Lizard" then @winner = player1name
    end
  end

  def explanation(player2turn)
    case player2turn
    when "Rock" then @explanation = "Great minds think alike!"
    when "Paper" then @explanation = "Paper covers Rock!"
    when "Scissors" then @explanation = "Rock blunts Scissors!"
    when "Spock" then @explanation = "Spock vapourises Rock!"
    when "Lizard" then @explanation = "Rock crushes Lizard!"
    end
  end
end
