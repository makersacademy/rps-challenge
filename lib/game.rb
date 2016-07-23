require_relative 'player'

class Game

  def initialize(player_1)
    @player_1 = player_1
  end

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def player_1
    @player_1
  end

end
