class Computer
    attr_reader :movements

    def initialize
        @movements = ['Rock', 'Paper', 'Scissors']
    end
    
    def select_move
        @movements.sample
    end
end