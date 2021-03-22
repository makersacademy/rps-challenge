class Scissors
  def winner(player2turn, player1name, player2name)
    case player2turn
    when "Rock" then @winner = player2name
    when "Paper" then @winner = player1name
    when "Scissors" then @winner = "Nobody won - TIE"
    when "Spock" then @winner = player2name
    when "Lizard" then @winner = player1name
    end
  end

  def explanation(player2turn)
    case player2turn
    when "Rock" then @explanation = "Rock blunts Scissors!"
    when "Paper" then @explanation = "Scissors cut Paper!"
    when "Scissors" then @explanation = "Great minds think alike!"
    when "Spock" then @explanation = "Spock smashes Scissors!"
    when "Lizard" then @explanation = "Scissors cut Lizard's head off!"
    end
  end
end
