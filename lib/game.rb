require_relative 'player'

class Game
  attr_reader :player_1, :player_2

  def initialize(playerClass, movesClass)
    @player_1 = initialize_player(playerClass, movesClass)
    @player_2 = initialize_player(playerClass, movesClass)
    player_1.opponent = player_2
    player_2.opponent = player_1
  end

  def initialize_player(playerClass, movesClass)
    player = playerClass.new
    player.moves = movesClass.new
    player
  end

  def draw?
    players.all? { |player| player.winner? == false }
  end

  private

  def players
    [player_1, player_2]
  end
end
