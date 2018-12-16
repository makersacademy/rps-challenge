class Battle 
    MOVES = ['garnet', 'amythyst', 'pearl', 'steven', 'lapiz'].freeze
    
    WHO_BEATS_WHO = {
        'garnet' => ['amythyst', 'steven'],
        'amythyst' => ['pearl', 'lapiz'],
        'pearl' => ['steven', 'garnet'],
        'steven' => ['lapiz', 'amythyst'],
        'lapiz' => ['garnet', 'pearl']
    }

    attr_reader :player, :outcome, :opponent_move

    def initialize(player_obj)
        @player = player_obj
        @opponent_move = MOVES.sample
        @outcome = "#{@player.name} "
    end

    def draw?
        if @player.move == @opponent_move
            @outcome << 'its a draw!'
        end
    end 

    def player_win? 
        if WHO_BEATS_WHO[@player.move].include?(@opponent_move)
            @outcome << "won!"
        else
            @outcome << "lost!"
        end
    end

    def play
      player_win?
      draw?
    end


end