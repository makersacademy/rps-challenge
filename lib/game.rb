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

    def result 
        if player_rock_win? || player_paper_win? || player_scissors_win?
            "#{@player_name} wins"
        elsif computer_rock_win? || computer_rock_win? || computer_rock_win?
            "Computer wins"
        else
            "It's a draw"
        end
    end

    def player_rock_win?
        @player_move == "rock" && @computer_move == "scissors"
    end

    def player_paper_win?
        @player_move == "paper" && @computer_move == "rock"
    end

    def player_scissors_win?
        @player_move == "scissors" && @computer_move == "paper"
    end

    def computer_rock_win?
        @computer_move == "rock" && @player_move == "scissors"
    end

    def computer_paper_win?
        @computer_move == "paper" && @player_move == "rock"
    end

    def computer_scissors_win?
        @computer_move == "scissors" && @player_move == "paper"
    end
end