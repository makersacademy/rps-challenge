require './lib/player'

class Game

  attr_reader :player
  attr_accessor :weapon

  def self.create(name)
    @game = Game.new(name)
  end

  def self.instance
    @game
  end

  def initialize(player)
    @player = player
  end

end
