class Game
    attr_accessor :player1, :computer, :outcome

    def initialize(player1, computer)
        @player1 = player1
        @computer = computer
        @outcome
        @rules = {
            "Rock" => "Scissors",
            "Scissors" => "Paper",
            "Paper" => "Rock"
        }
    end

    def determine_winner
        if @player1.move == @computer.move
            @outcome = "Draw"
        elsif @rules[@player1.move] == @computer.move
            @outcome = "Player 1"
        else
            @outcome = "Computer"
        end
    end
end
