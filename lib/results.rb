class Results

def check(player1_move, player2_move)
   @winner = "You" if player1_move == 'Rock' && player2_move == 'Scissors'
   @winner = "You" if player1_move == 'Scissors' && player2_move == 'Paper'
   @winner = "You" if player1_move == 'Paper' && player2_move == 'Rock'
   @winner = "Computer" if player2_move == 'Rock' && player1_move == 'Scissors'
   @winner = "Computer" if player2_move == 'Scissors' && player1_move == 'Paper'
   @winner = "Computer" if player2_move == 'Paper' && player1_move == 'Rock'
   @winner = "Neither of you" if player1_move == 'Rock' && player2_move == 'Rock'
   @winner = "Neither of you" if player1_move == 'Scissors' && player2_move == 'Scissors'
   @winner = "Neither of you" if player1_move == 'Paper' && player2_move == 'Paper'
   @winner
 end

end
