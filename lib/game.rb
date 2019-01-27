class Game
    attr_accessor :player1, :computer, :winner1

    def initialize(player1, computer)
        @player1 = player1
        @computer = computer
        @winner1
    end


    def determine_winner
        if @player1.move == @computer.move
            @winner1 = 'Draw'
        elsif @player1.move == 'Rock'
            if @computer.move == 'Scissors'
                @winner1 = 'Player 1'
            else
                @winner1 = 'Computer'
            end
        elsif @player1.move == 'Paper'
            if @computer.move == 'Rock'
                @winner1 = 'Player 1'
            else
                @winner1 = 'Computer'
            end
        else
            if @computer.move == 'Paper'
                @winner1 = 'Player 1'
            else @computer.move == 'Rock'
                @winner1 = 'Computer'
            end
        end
    end
end
