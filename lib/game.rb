require_relative 'player'
require_relative 'computer'

class Game

    attr_accessor :player1, :computer

    def initialize(player1)
        @player1 = Player.new(player1)
        @computer = Computer.new
    end

end