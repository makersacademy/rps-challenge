


# @name if session[:move] == "Paper"

if (session[:move] == "Rock" && @computer_move == "Scissors") || 
   (session[:move] == "Paper" && @computer_move == "Rock") ||
   (session[:move] == "Scissors" && @computer_move == "Paper") 
  @name + "Wins"

elsif session[:move] == @computer_move
  "It's a draw"
 
else 
  @opponent + "Wins"