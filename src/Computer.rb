class Computer
    attr_reader :name, :move
    def initialize
        @name = "Computer"
    end

    def GenerateMove()
        @move = ["Rock", "Paper", "Scissors"].sample
    end
end