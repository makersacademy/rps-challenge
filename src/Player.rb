
class Player
    attr_accessor :name
    attr_reader :move
    def initialize(name)
        @move = nil
        @name = name
    end
    def MakeMove(move)
        @move = move
    end
end