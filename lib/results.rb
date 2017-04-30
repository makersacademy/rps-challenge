class Results
  def check(player1_move, player2_move)
    @winner = "Player 1" if player1_move == 'Rock' && player2_move == 'Scissor'
    @winner = "Player 1" if player1_move == 'Scissor' && player2_move == 'Paper'
    @winner = "Player 1" if player1_move == 'Paper' && player2_move == 'Rock'
    @winner = "Player 2" if player2_move == 'Rock' && player1_move == 'Scissor'
    @winner = "Player 2" if player2_move == 'Scissor' && player1_move == 'Paper'
    @winner = "Player 2" if player2_move == 'Paper' && player1_move == 'Rock'
    @winner = "Nobody" if player1_move == 'Rock' && player2_move == 'Rock'
    @winner = "Nobody" if player1_move == 'Scissor' && player2_move == 'Scissor'
    @winner = "Nobody" if player1_move == 'Paper' && player2_move == 'Paper'
    @winner
  end
end
