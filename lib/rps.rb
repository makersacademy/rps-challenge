class RPS

    attr_reader :move1, :move2

    def initialize(move)
        @move1 = move
        puts @move1
    end

    def game_round_2
        @move2 = ['rock', 'paper', 'scissors'].sample
        puts @move2
        game_results
    end

    def game_results
        if @move1 == 'rock' && @move2 == 'scissors' || @move1 == 'scissors' && @move2 == 'paper' || @move1 == 'paper' && @move2 == 'rock'
            puts "Player 1 wins"
        elsif @move1 == @move2
            puts 'It\'s a draw!'
        else puts "Player 2 wins"
        end
    end
end