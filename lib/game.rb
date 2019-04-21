class Game

  def result(player1_move, player2_move)
    if (player1_move == 'ROCK' && player2_move == 'PAPER') || (player1_move == 'PAPER' && player2_move == 'SCISSORS') || (player1_move == 'SCISSORS' && player2_move == 'PAPER')
      2
    elsif (player1_move == 'ROCK' && player2_move == 'SCISSORS') || (player1_move == 'PAPER' && player2_move == 'ROCK') || (player1_move == 'SCISSORS' && player2_move == 'PAPER')
      1
    elsif (player1_move == 'ROCK' && player2_move == 'ROCK') || (player1_move == 'PAPER' && player2_move == 'PAPER') || (player1_move == 'SCISSORS' && player2_move == 'SCISSORS')
      0
     end
   end
end
