require_relative 'move'

class Computer
    attr_accessor :score

    def initialize
        @score = 0
    end

    def move
        move = Move.new
        return move.moves[rand(move.moves.length)]
    end
end