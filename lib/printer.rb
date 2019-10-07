class Printer

  attr_reader :player1, :player2, :result_player1

  def print_result(result_player1, player1, player2)
    @player1 = player1
    @player2 = player2
    @result_player1 = result_player1
    @result_player1 == 'Draw' ? draw : not_a_draw
  end

  def not_a_draw
    "Congratulations #{winner}, you won! Better luck next time #{looser}"
  end

  def draw
    "It's a draw!"
  end

 private

  def winner
    return player1 if result_player1 == 'Win'
    player2
  end

  def looser
    return player2 if winner == player1
    player1
  end
end
