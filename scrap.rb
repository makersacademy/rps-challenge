puts "Player 1 - enter 'rock', 'paper' or 'scissors'"
p_1 = gets.chomp

puts "Player 2 - enter 'rock', 'paper' or 'scissors'"
p_2 = gets.chomp

if (p_1 == "Rock" && p_2 == "Scissors") || (p_1 == "Paper" && p_2 == "Rock") ||
  (p_1 == "Scissors" && p_2 == "Paper")
  puts "Player 1 wins"

elsif p_1 == p_2
  puts "It's a draw"

else
  puts "Player 2 wins"
end
