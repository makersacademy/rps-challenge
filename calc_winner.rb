class CalcWinner

  def winner(player1turn,player2turn,player1name,player2name)
    if player1turn == "Rock"
      case player2turn
      when "Rock" then @winner = "Nobody won - TIE"
      when "Paper" then @winner = player2name
      when "Scissors" then @winner = player1name
      when "Spock" then @winner = player2name
      when "Lizard" then @winner = player1name
      end
    elsif player1turn == "Paper"
      case player2turn
      when "Rock" then @winner = player1name
      when "Paper" then @winner = "Nobody won - TIE"
      when "Scissors" then @winner = player2name
      when "Spock" then @winner = player1name
      when "Lizard" then @winner = player2name
      end
    elsif player1turn == "Scissors"
      case player2turn
      when "Rock" then @winner = player2name
      when "Paper" then @winner = player1name
      when "Scissors" then @winner = "Nobody won - TIE"
      when "Spock" then @winner = player2name
      when "Lizard" then @winner = player1name
      end
    elsif player1turn == "Spock"
      case player2turn
      when "Rock" then @winner = player1name
      when "Paper" then @winner = player2name
      when "Scissors" then @winner = player1name
      when "Spock" then @winner = "Nobody won - TIE"
      when "Lizard" then @winner = player2name
      end
    elsif player1turn == "Lizard"
      case player2turn
      when "Rock" then @winner = player2name
      when "Paper" then @winner = player1name
      when "Scissors" then @winner = player2name
      when "Spock" then @winner = player1name
      when "Lizard" then @winner = "Nobody won - TIE"
      end
    end

    #score
    return @winner
  end

end
