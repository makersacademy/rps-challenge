require_relative 'player'

class Game
  attr_reader :player

  def self.create(player_1)
    @game = Game.new(player_1)
  end

  def self.instance
    @game
  end

  def initialize(player)
    @player = player
  end
end
