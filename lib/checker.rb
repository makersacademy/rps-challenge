def checker
  if @options[@player_1_card] == @player_2_card
    "#{@player_2_name} wins"
  elsif @options[@player_2_card] == @player_1_card
    "#{@player_1_name} wins"
  else
    "Tie"
  end
end
