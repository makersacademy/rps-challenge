class Game
  attr_reader :player

  def self.start(player)
    @game = Game.new(player)
  end

  def initialize(player)
    @player = player
  end

  def self.instance
    @game
  end

end
