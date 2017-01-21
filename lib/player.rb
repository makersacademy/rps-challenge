class Player
    
    def initialize(name)
        @name = name
    end
    
    def choose(choice)
        @choice = choice
    end
        
    attr_reader :name, :choice
end