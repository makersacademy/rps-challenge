class Player
    attr_accessor :name, :move
    def initialize(name)
        @name = name
        @move
    end

    def select_move(move)
        @move = move
    end
end
