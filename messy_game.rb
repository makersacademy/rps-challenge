arr = [:rock, :paper, :scissors]

def computers_turn(arr)
  arr.sample
end

def player_1_turn(arr)
  arr.sample
end

player_1 = computers_turn(arr)
player_2 = player_1_turn(arr)


if player_1 == :rock && player_2 == :rock
  puts "It's a draw"
elsif player_1 == :paper && player_2 == :paper
  puts "It's a draw"
elsif player_1 == :scissors && player_2 == :scissors
  puts "It's a draw"
elsif player_1 == :rock && player_2 == :scissors
  puts "Player 1 wins"
elsif player_1 == :paper && player_2 == :rock
  puts "Player 1 wins"
elsif player_1 == :scissors && player_2 == :paper
  puts "Player 1 wins"
else
  puts "Player 2 wins"
end
