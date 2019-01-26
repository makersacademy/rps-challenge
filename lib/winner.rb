class Winner
    attr_accessor :player1, :computer_move, :winner1

    def initialize(player1)
        @player1 = player1
        @computer_move = ['Rock', 'Paper', 'Scissors'].sample
        @winner1
    end


    def determine_winner
        if @player1.move == @computer_move
            @winner1 = 'draw'
        elsif @player1.move == 'Rock'
            if @computer_move == 'Scissors'
                @winner1 = 'Player 1'
            else
                @winner1 = 'Computer'
            end
        elsif @player1.move == 'Paper'
            if @computer_move == 'Rock'
                @winner1 = 'Player 1'
            else
                @winner1 = 'Computer'
            end
        else
            if @computer_move == 'Paper'
                @winner1 = 'Player 1'
            else @computer_move == 'Rock'
                @winner1 = 'Computer'
            end
        end
    end
end
