class Move
  attr_reader :move

    def initialize(move)
      @move = move
    end
    def move
      @move
    end
    def mac_move
      moves = ['rock', 'paper', 'scissors']
      mac_move = moves.sample

    end
end
