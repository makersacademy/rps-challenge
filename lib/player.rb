class Player

    attr_reader :name, :player_move

    def initialize(name)
        @name = name
        
    end

    def move(choice)
       @player_move = choice
    end

end