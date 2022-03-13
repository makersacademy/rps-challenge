class ResultManager

  attr_reader :result

  def determine_result(player1choice, player2choice)
    if player1choice == player2choice
      @result = 'draw'
    elsif player1choice == 'rock'
      player2choice == 'scissors' ? @result = 'player1win' : @result = 'player2win'
    elsif player1choice == 'paper'
      player2choice == 'rock' ? @result = 'player1win' : @result = 'player2win'
    else player2choice == 'paper' ? @result = 'player1win' : @result = 'player2win'
    end
  end

end