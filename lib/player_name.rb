
class PlayerName
    MAX_TURNS = 3
    attr_reader :name, :turns

    def initialize( name )
        @name = name
        @turns = 4 
    end

    def num_turns 
        left = @turns - 1
    end

end