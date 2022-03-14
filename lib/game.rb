class Game

    def initialize
        @moves = ["rock", "paper", "scissors"]
        
    end

    def ai_choice
        @moves.sample
    end

    def evaluate(player_choice, ai_choice)
        if player_choice == "rock" && ai_choice == "paper"
          return 'Player lost'
        elsif player_choice == "scissors" && ai_choice == "rock"
            return 'Player lost'
        elsif player_choice == "paper" && ai_choice == "scissors"
            return 'Player lost'
        elsif player_choice == ai_choice
            return 'This is a draw.'
        elsif player_choice == "scissors" && ai_choice == "papaer"
            return 'Player won'
        elsif player_choice == "rock" && ai_choice == "scissors"
            return 'Player won'
        elsif player_choice == "paper" && ai_choice == "rock"
            return 'Player won'
        end
    end
    
    private

end