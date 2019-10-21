class Game
    attr_reader :player_name

    def initialize(player_name)
        @player_name = player_name
    end
    
    def computer_move
        ["Rock", "Paper", "Scissors"].sample #random value from array
    end

    def check_winner(player_input, cpu_input) 
        if player_input == cpu_input
            return "Draw"
          elsif player_input == "rock" && cpu_input == "scissors"
            return "Player wins"
          elsif player_input == "paper" && cpu_input == "rock"
            return "Player wins"
          elsif player_input == "scissors" && cpu_input == "paper"
            return "Player wins"
          else
            return "Computer wins!"
          end
    end
end



