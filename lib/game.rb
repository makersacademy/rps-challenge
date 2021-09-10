require_relative 'logic'

class Game

    attr_reader :player, :options, :player_pick, :current_turn, :human, :comp, :human_score

    def initialize(player)
        @player = player        
        @comp_score = 0
        @human_score = 0
    end

    def player_chooses(choice)        
        @choice = choice 
        play_game       
    end

    def play_game
        return "Game Over!" if game_over?
        logic = Logic.new
        result = logic.play_game(@choice)
        p result
        
        if result == "You won!"
            @human_score += 1           
        elsif result == "You lose."
            @comp_score += 1
        end
    end

    def game_over?
        @human_score == 5 || @comp_score == 5            
    end  
end