class Winner
    attr_reader :player1, :computer_move

    def initialize(player1)
        @player1 = player1
        @computer_move = ['Rock', 'Paper', 'Scissors'].sample
    end

end
