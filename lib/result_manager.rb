class ResultManager

  attr_reader :result

  def choose_result(player1choice, player2choice)
    if player1choice == player2choice
      @result = 'draw'
    elsif player1choice == 'rock'
      player2choice == 'scissors' ? @result = 0 : @result = 1
    elsif player1choice == 'paper'
      player2choice == 'rock' ? @result = 0 : @result = 1
    else player2choice == 'paper' ? @result = 0 : @result = 1
    end
  end

end