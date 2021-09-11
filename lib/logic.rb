class Logic

    attr_reader :comp

    def initialize      
      @options = ['rock', 'paper', 'scissors']
      @score = []   
    end
    
    def play_game(choice)
        comp = @options.sample
        if (choice == "rock" && comp == "scissors") || (choice == "scissors" && comp == "paper") || (choice == "paper" && comp == "rock")
            @score.push("You won!","Computer picks #{comp} - You chose #{choice}")   
        elsif (choice == "rock" && comp == "rock") || (choice == "paper" && comp == "paper") || (choice == "scissors" && comp == "scissors")
            @score.push("Draw! No point awarded","Computer picks #{comp} - You chose #{choice}") 
            #@message = "Draw! No point awarded"
        else            
            #@message = "You lose."
            @score.push("You lose.","Computer picks #{comp} - You chose #{choice}") 
        end
        #@message
        @score
    end
  end 