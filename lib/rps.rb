class RPS

    attr_reader :player1, :player2
    def player1
        @player1 = ['rock', 'paper', 'scissors'].sample
    end

    def player2 
        @player2 = ['rock', 'paper', 'scissors'].sample
    end

    def game
        if @player1 == 'rock' && @player2 == 'scissors' || @player1 == 'scissors' && @player2 == 'paper' || @player1 == 'paper' && @player2 == 'rock'
            puts 'Player 1 wins'
        elsif @player2 == 'rock' && @player1 == 'scissors' || @player2 == 'scissors' && @player1 == 'paper' || @player2 == 'paper' && @player1 == 'rock'
            puts 'Player 2 wins'
        else
            puts 'It\'s a draw!'
        end
    end
end