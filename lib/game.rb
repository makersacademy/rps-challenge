class Game

  def self.create_single(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def initialize(player)
    @player = player
  end
end
