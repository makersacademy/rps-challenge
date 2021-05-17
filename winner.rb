def winner_rock
  "You Win!" if @computer_move == "scissors" 
  "You Draw!" if @computer_move == "rock"
  "You Lose!" if @computer_move == "paper"
end
