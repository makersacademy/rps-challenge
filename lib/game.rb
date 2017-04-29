#controls the game actions including turns
class Game

  attr_reader :player

  def initialize(player)
    @player = player
  end

  def self.create(player)
    @instance_capture = Game.new(player)
  end

  def self.load
    @instance_capture
  end

end
