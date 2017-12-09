require_relative 'player'
require_relative 'choice'

class Game

  attr_reader :P1

  def initialize(player_name)
    @P1 = Player.new(player_name)
  end

  def self.create(player_name)
    @game = Game.new(player_name)
  end

  def self.instance
    @game
  end
end
