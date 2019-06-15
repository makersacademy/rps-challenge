class Game

  attr_reader :player

  def initialize(player)
    @player = player
  end

  def self.create(player)
    @instance = Game.new(player)
  end

  def self.load
    @instance
  end

end
