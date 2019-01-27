class Winner
    attr_accessor :player1, :player2, :winner1 #:computer_move

    def initialize(player1, player2)
        @player1 = player1
        @player2 = player2
        @winner1
    end


    def determine_winner
        if @player1.move == @player2.move
            @winner1 = 'Draw'
        elsif @player1.move == 'Rock'
            if @player2.move == 'Scissors'
                @winner1 = 'Player 1'
            else
                @winner1 = 'Player 2'
            end
        elsif @player1.move == 'Paper'
            if @player2.move == 'Rock'
                @winner1 = 'Player 1'
            else
                @winner1 = 'Player 2'
            end
        else
            if @player2.move == 'Paper'
                @winner1 = 'Player 1'
            else @player2.move == 'Rock'
                @winner1 = 'Player 2'
            end
        end
    end
end
