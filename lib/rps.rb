# Write a program that lets two players play Rock, Paper, Scissors. The program should:
# * Ask player 1 for their move.  They can input `rock`, `paper` or
#   `scissors`.
# * Ask player 2 for their move.  They can input `rock`, `paper` or
#   `scissors`.
# * Calculates who has won.  `rock` beats `scissors`, `paper` beats
#   `rock`, `scissors` beat `paper`.
# * If player 1 has won, `puts`es `Player 1 wins`.
# * If player 2 has won, `puts`es `Player 2 wins`.
# * If the game is a draw, `puts`es `It's a draw`.
#
# * Note: You can assume that players will input one of the three
#   possible moves described above.
#
# * Note: When you run the automated tests, the tests will simulate
#   the user input.  You shouldn't need to enter any input manually.
#   If the tests hang when you run them, it probably means your code
#   doesn't work correctly, yet.
#
# * Note: You can assume the players will only ever input `rock`,
#   `paper` or `scissors`.

# Ask Player 1 for their move
puts "Player 1 please state your move"
# Player 1 inputs their move
p1 = gets.chomp
# Ask Player 2 for their move
puts "Player 2 please state your move"
# Player 2 inputs their move
p2 = gets.chomp

# Cut moves into a key i.e. 'scissors' => 's'
p1 = p1[0]
p2 = p2[0]

# If else statement to work out game result (9 possible combinations)
# All possible outcomes for Player 1 to win (3 combinations)
if (p1 == "r" && p2 == "s") || (p1 == "p" && p2 == "r") || (p1 == "s" && p2 == "p")
  puts "Player 1 wins"
# Draw result (3 combinations)
elsif p1 == p2
  puts "It's a draw"
# All other possible outcomes would result in Player 2 winning (3 combinations)
else
  puts "Player 2 wins"
end
