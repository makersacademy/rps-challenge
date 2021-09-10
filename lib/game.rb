class Game

    attr_reader :player, :options, :player_pick, :current_turn, :human, :comp, :human_score

    def initialize(player)
        @player = player
        @options = ['rock', 'paper', 'scissors']
        @current_turn = true
        @comp_score = 0
        @human_score = 0
    end

    def player_chooses(choice)
        @current_turn = false
        @human = choice
    end

    def switch_turns?
        true
    end

    def opponent_pick
        @comp = @options.sample
    end 

    def logic(human, comp)
        if (human == "rock" && comp == "scissors") || (human == "scissors" && comp == "paper") || (human == "paper" && comp == "rock")
            @message = "You won!"
            @human_score += 1
    
        #draws
        elsif (human == "rock" && comp == "rock") || (human == "paper" && comp == "paper") || (human == "scissors" && comp == "scissors")
            @message = "Draw! No point awarded"

        else
            @comp_score += 1
            @message = "You lose."   
        end
        @message
    end

    def game_over
        if @human_score == 5 || @comp_score == 5
            "Game Over!"
        end
    end  
end