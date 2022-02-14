class Game

    attr_reader :player, :move, :c_move, :result, :score_hash

    def initialize(player)
        @player = player
        @move = nil
        @c_move = nil
        @result = nil
        @score_hash = {:player => 0, :computer => 0}
    end

    def player_move(player_move)
        @move = player_move
    end

    def computer_move
        @c_move = ["Rock","Paper","Scissors"].sample
    end

    def winner(move, c_move)
        if (move == "Rock" and c_move == "Rock") or (move == "Paper" and c_move == "Paper") or (move == "Scissors" and c_move == "Scissors")
            @result = "Draw"
        elsif (move == "Rock" and c_move == "Scissors") or (move == "Paper" and c_move == "Rock") or (move == "Scissors" and c_move == "Paper")
            @result = @player
            @score_hash[:player] += 1
        elsif (move == "Scissors" and c_move == "Rock") or (move == "Rock" and c_move == "Paper") or (move == "Paper" and c_move == "Scissors")
            @result = "Computer"
            @score_hash[:computer] += 1
        end
    end

end