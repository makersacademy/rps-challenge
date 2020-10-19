class Game

  WINNING_MOVES = {
    'Rock' => 'Scissors',
    'Scissors' => 'Paper',
    'Paper' => 'Rock'
  }

  def rps(player1, player2)

    return "It's a draw" if player1.choice == player2.choice

    return "#{player1.name} wins" if WINNING_MOVES[player1.choice] == player2.choice

    return "#{player2.name} wins"
  end
end
