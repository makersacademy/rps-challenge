class Player

    ## classist class methods
    def self.instance 
        @player
    end

    def self.create_player(name)
        @player = Player.new(name)
    end

    # def self.give_player_move(move)
    #     @player.move(move)
    # end


    #everyone else
    
    attr_reader :name, :move


    def initialize(name)
        @name = name
        @move = false
    end

    def player_move(move)
        @move = move
    end

end