class Game
  attr_reader :game, :choice
  def initialize(player, weapon)
    @player = player
    @choice = weapon
  end

  def self.start(player, weapon)
    @game = Game.new(player, weapon)
  end

  def self.current
    @game
  end
end
