class Computer
    attr_accessor :move

    def initialize
      @move = ['Rock', 'Paper', 'Scissors'].sample
    end

end
