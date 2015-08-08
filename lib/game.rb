require_relative 'player'

class Game

  attr_reader :player_1, :player_2

    def initialize(playerClass)
      @player_1 = initialize_player playerClass
      @player_2 = initialize_player playerClass

      player_1.opponent = player_2
      player_2.opponent = player_1
    end

    def initialize_player(playerClass)
      player = playerClass.new
      player
    end

    def play
    end

    private

    def players
        [player_1, player_2]
    end

end
