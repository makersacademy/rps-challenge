class Computer
    attr_reader :movements
    MOVEMENTS = ['Rock', 'Paper', 'Scissors']
  
    def select_move
        MOVEMENTS.sample
    end
end