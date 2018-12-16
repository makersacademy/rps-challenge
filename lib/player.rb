class Player

    ## classist class methods
    def self.instance 
        @player
    end

    def self.store_name(name)
        @name = name
    end

    def self.create_player(move)
        name = @name
        @player = Player.new(name, move)
    end


    #everyone else
    
    attr_reader :name, :move


    def initialize(name, move)
        @name = name
        @move = move
    end

end