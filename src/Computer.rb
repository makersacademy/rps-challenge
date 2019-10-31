class Computer
    attr_reader :name
    def initialize
        @name = "Computer"
    end
    
    def Move()
        return "Rock", "Paper", "Scissors"].sample
    end
end