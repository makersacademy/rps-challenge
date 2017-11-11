# Game class model layer
require './lib/computer'
require './lib/player'

class Game
  attr_reader :player, :player2

  def initialize(player, player2 = Computer.new)
    @player = player
    @player2 = player2
  end

  def self.instance
    @instance
  end

  def self.create(value)
    @instance = value
  end
end
