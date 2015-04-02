class Game

attr_reader :player_one, :player_two

def add_player(player)
  @player_one ? @player_two = player : @player_one = player
  players << player
end

def players
  @players ||= []
end

# to be refactored!!
def winner(player1, player2)
  if (player1.choice == :rock && player2.choice == :scissors)
      player1.name
  elsif (player2.choice == :rock && player1.choice == :scissors)
      player2.name
  elsif (player1.choice == :paper && player2.choice == :rock)
      player1.name
  elsif (player2.choice == :paper && player1.choice == :rock)
      player2.name
  elsif (player1.choice == :scissors && player2.choice == :paper)    
      player1.name
  elsif (player2.choice == :scissors && player1.choice == :paper)    
      player2.name
  else
      :draw
  end
end


end