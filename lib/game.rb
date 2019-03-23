require_relative './player'

class Game
  def self.create(name, player = Player)
    @game = new(name, player)
  end

  def self.instance
    @game
  end

  attr_reader :player1

  def initialize(name, player = Player)
    @player1 = player.new(name)
  end
end
