require_relative 'player'

class Game

  attr_reader :the_player

  def initialize(player_name)
    @the_player = Player.new(player_name)
  end

  def self.create(player_name)
    @game = Game.new(player_name)
  end

  def self.instance
    @game
  end
end
