require_relative 'player'

class Game

  attr_reader :player

  def initialize(player = Player.new)
    @player = player
  end

  def self.start(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

end
