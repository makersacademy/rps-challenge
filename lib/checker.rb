def checker
  if @player_1_card == "rock" && @player_2_card == "scissors"
    "#{@player_1_name} wins"
  elsif @player_1_card == "paper" && @player_2_card == "rock"
    "#{@player_1_name} wins"
  elsif @player_1_card == "scissors" && @player_2_card == "paper"
    "#{@player_1_name} wins"
  elsif @player_2_card == "rock" && @player_1_card == "scissors"
    "#{@player_2_name} wins"
  elsif @player_2_card == "paper" && @player_1_card == "rock"
    "#{@player_2_name} wins"
  elsif @player_2_card == "scissors" && @player_1_card == "paper"
    "#{@player_2_name} wins"
  else
    "Tie"
  end
end
