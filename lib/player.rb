class Player

    ## classist class methods
    def self.instance 
        @player
    end

    def self.create_player(name)
        @player = Player.new(name)
    end

    #everyone else
    attr_accessor :move
    attr_reader :name


    def initialize(name)
        @name = name
        @move = false
    end
    
end