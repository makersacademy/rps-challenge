require_relative 'player'

class Game

  attr_reader :player, :choice, :game

  def initialize(player = Player.new)
    @player = player
    @choice = []
  end

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

end
