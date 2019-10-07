class Game
    attr_reader :chosen_move, :champion
    MOVE_LIST = ["rock", "scissors", "paper"]
    def initialize
        @chosen_move
        @champion
    end

    def computer_move
      @chosen_move = MOVE_LIST.sample
    end

    def calculate(player_move, cmp_move)
        if MOVE_LIST.index(player_move) == 0 && MOVE_LIST.index(cmp_move) == 1 ||
             MOVE_LIST.index(player_move) == 1 && MOVE_LIST.index(cmp_move) == 2 ||
               MOVE_LIST.index(player_move) == 2 && MOVE_LIST.index(cmp_move) == 0
            @champion = "Player wins!"
        elsif MOVE_LIST.index(player_move) == MOVE_LIST.index(cmp_move)
            @champion = "Draw!"
        else
            @champion = "Computer wins!"
        end
    end
end