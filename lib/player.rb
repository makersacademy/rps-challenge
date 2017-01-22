class Player
    
    def initialize(name)
        @name = name
    end
    
    def choose(choice)
        @choice = choice.downcase.to_sym
    end
        
    attr_reader :name, :choice
end