class RPS

    attr_reader :move1, :move2

    def initialize(move)
        @move1 = move
        game_round_2
    end

    def game_round_2
        @move2 = ['rock', 'paper', 'scissors'].sample
        #game_results
    end

    def game_results
        if @move1 == 'rock' && @move2 == 'scissors' || @move1 == 'scissors' && @move2 == 'paper' || @move1 == 'paper' && @move2 == 'rock'
            return "Player 1 wins"
        elsif @move1 == @move2
            return "It's a draw!"
        else
            return 'Player 2 wins'
        end
    end
end