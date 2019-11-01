class Game
    attr_reader :player_name, :player_move, :computer_move
    def initialize(player_name)
        @player_name = player_name    
    end

    def take_go(move)
        @player_move = move        
    end

    def computer_take_go
        @computer_move = ["rock", "paper", "scissors"].sample
    end
end