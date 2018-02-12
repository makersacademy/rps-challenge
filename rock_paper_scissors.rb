while true do
  print "Player 1: choose rock, paper, or scissors! "
  player_1 = gets.chomp
  print "Player 2: choose rock, paper, or scissors! "
  player_2 = gets.chomp
  if player_1 == player_2
    puts "It's a draw"
  elsif player_1 == "rock" && player_2 == "scissors"
    puts "Player 1 wins!"
  elsif player_1 == "paper" && player_2 == "rock"
    puts "Player 1 wins!"
  elsif player_1 == "scissors" && player_2 == "paper"
    puts "Player 1 wins!"
  else
    puts "Player 2 wins!"
  end
  break
end
