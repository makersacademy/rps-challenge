require_relative 'rps'
require_relative 'player'

class Game

    attr_reader :name, :player1, :player2
    
    def initialize(name)
    @name = name
    @player1 = Player.new(name = @name)
    @player2 = Player.new(name = "Computer")
    end

    def play_game
        @game = RPS.new(@player1, @player2)
        @game.game
    end

end