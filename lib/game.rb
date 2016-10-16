require './lib/player'

class Game

  attr_reader :game, :player_1

  def self.create(player_1)
    @game = Game.new(player_1)
  end

  def self.instance
    @game
  end

  def initialize(player_1)
    @player_1 = player_1
  end

  def player_1_name
    @player_1.name
  end

end
