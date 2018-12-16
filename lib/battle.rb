class Battle 
    MOVES = ['garnet', 'amythyst', 'pearl', 'steven', 'lapiz'].freeze

    attr_reader :player, :opponent_move

    def initialize(player_obj)
        @player = player_obj
        @opponent_move = MOVES.sample
    end
end