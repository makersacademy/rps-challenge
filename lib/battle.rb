class Battle 
    MOVES = ['garnet', 'amythyst', 'pearl', 'steven', 'lapiz'].freeze
    WINNING_MOVES = {
        'garnet' => ['amythyst', 'steven'],
        'amythyst' => ['pearl', 'lapiz'],
        'pearl' => ['steven', 'garnet'],
        'steven' => ['lapiz', 'amythyst'],
        'lapiz' => ['garnet', 'pearl']
    }

    attr_reader :player, :opponent_move

    def initialize(player_obj)
        @player = player_obj
        @opponent_move = MOVES.sample
    end

    def draw?
        if @player.move == @opponent_move
            return 'its a draw!'
        end
    end 

    def check_winning_moves 
        if WINNING_MOVES[@player.move].include?(@opponent_move)
            return true
        else
            return false
        end
    end



    


end