require_relative 'player'

class Game

  attr_reader :player_1

  def initialize(player_1_name)
    @player_1 = Player.new(player_1_name)
  end

  def self.create(player_1)
    @game = Game.new(player_1)
  end

  def self.instance
    @game
  end

end
