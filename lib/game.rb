class Game

  def self.create(player)
    @running ||= Game.new(player)
  end

  def self.current
    @running
  end

  attr_reader :player

  def initialize(player)
    @player = player
  end

end
