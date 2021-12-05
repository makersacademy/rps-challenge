class Game
     def initialize(player_tool, computer_tool)
     @player_tool = player_tool
     @computer_tool = computer_tool
     end 

     def play
        if @player_tool == @computer_tool
            return "It's a draw"
          elsif @player_tool == "Paper" && @computer_tool == "Rock" || 
              @player_tool == "Rock" && @computer_tool == "Scissors" || 
              @player_tool == "Scissors" && @computer_tool == "Paper" 
              return "Player 1 wins"
          elsif @computer_tool == "Paper" && @player_tool == "Rock" || 
              @computer_tool == "Rock" && @player_tool == "Scissors" || 
              @computer_tool == "Scissors" && @player_tool == "Paper"
              return "Computer wins"
          end
     end 

end 