require_relative './gamelogic'

class Game
  attr_accessor :player_1, :player_2, :game_result

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def result(player_1, player_2)
    @game_result = GameLogic.new(player_1, player_2).result
  end

  def self.instance
    @game
  end

end