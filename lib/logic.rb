class Logic

    attr_reader :options

    def initialize      
      @options = ['rock', 'paper', 'scissors'] 
    end

    def computer_picks
        @options.sample
    end
    
    def play_game(player, computer)
        if (player == "rock" && computer == "scissors") || (player == "scissors" && computer == "paper") || (player == "paper" && computer == "rock")
            @message = "You won!"
        elsif (player == "rock" && computer == "rock") || (player == "paper" && computer == "paper") || (player == "scissors" && computer == "scissors")
            @message = "Draw! No point awarded"
        else            
            @message = "You lose."
        end
        @message
    end

    def game_over?(human_score, comp_score)
        human_score == 3 || comp_score == 3            
    end  

  end 