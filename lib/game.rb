require_relative 'player'

class Game
  attr_reader :player_1

  def initialize(player_1)
    @player_1 = player_1
  end

  def self.create(player_1)
    @game = Game.new(Player.new(player_1))
  end

  def self.instance
    @game
  end
end
