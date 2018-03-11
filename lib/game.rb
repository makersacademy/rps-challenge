class Game

  attr_reader :player

  def initialize(player)
    @player = player
  end

  def self.create(player)
    @running = Game.new(player)
  end

  def self.current
    @running
  end

end
