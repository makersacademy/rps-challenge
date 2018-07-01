require_relative 'opponent'
require_relative 'player'

class Game

    OPTIONS =["Rock", "Paper", "Scissors"]

    attr_reader :player, :opponent, :player_option, :opponent_option

    def create(player, opponent)
      @game = Game.new(player, opponent)
    end

    def self_instance
      @game
    end

    def initialize(player, opponent)
      @player = player
      @opponent = opponent
    end
end
