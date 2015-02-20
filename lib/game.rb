class Game

attr_reader :player_one, :player_two

def add_player(player)
    @player_one ? @player_two = player : @player_one = player
end

def winner(player1, player2)

#to be refactored!!
  if (player1.choice == "Rock" && player2.choice == "Scissors")
      player2.name
  elsif (player2.choice == "Rock" && player1.choice == "Scissors")
      player1.name
  elsif (player1.choice == "Paper" && player2.choice == "Rock")
      player1.name
  elsif (player2.choice == "Paper" && player1.choice == "Rock")
      player2.name
  elsif (player1.choice == "Scissors" && player2.choice == "Paper")    
      player2.name
  elsif (player2.choice == "Scissors" && player1.choice == "Paper")    
      player1.name
  else
      "Draw"
  end


end
end