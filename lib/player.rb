class Player

    attr_accessor :move
    attr_reader :name

    def initialize(name)
        @name = name
        @move = false
    end
end