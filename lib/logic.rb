class Logic

    attr_reader :comp

    def initialize      
      @options = ['rock', 'paper', 'scissors']      
    end
    
    def play_game(choice)
        comp = @options.sample
        if (choice == "rock" && comp == "scissors") || (choice == "scissors" && comp == "paper") || (choice == "paper" && comp == "rock")
            @message = "You won!"
               
        
        elsif (choice == "rock" && comp == "rock") || (choice == "paper" && comp == "paper") || (choice == "scissors" && comp == "scissors")
            @message = "Draw! No point awarded"

        else            
            @message = "You lose."   
        end
        @message
    end
  end 