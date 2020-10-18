class Game



  def rps(player1, player2)
    winning_moves = {
      'Rock' => 'Scissors',
      'Scissors' => 'Paper',
      'Paper' => 'Rock'
    }
    return "It's a draw" if player1.choice == player2.choice

    return "#{player1.name} wins" if winning_moves[player1.choice] == player2.choice

    return "#{player2.name} wins"
  end
end
