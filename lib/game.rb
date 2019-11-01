=begin

class Game
  
  def initialize(entry) 
    #entry will be game_entry, need to get that from player input
    @game_results = [Rock, Paper, Scissors]
    #may need to be strings? not sure if what player enters is a string, will test



  end
end





This a previously written working Ruby rock paper scissors game that I am adapting to this app

player_one_move = entry - this will be passed (somehow) from the game_entry that the player enters
player_two_move = game_results.sample

r = "Rock"
s = "Scissors"
p = "Paper"

while true do
  if player_one_move == player_two_move
    puts "It's a draw!"
    break
  elsif
    (player_one_move == r && player_two_move == s) ||
    (player_one_move == s && player_two_move == p) ||
    (player_one_move == p && player_two_move == r)
    puts "You win!"
    break
  elsif
    puts "You lose!"
    break
  end
end

=end