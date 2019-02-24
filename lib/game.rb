class Game

  def self.start(player)
    @current_game = Game.new(player)
  end
  def self.current_game
    @current_game
  end

  attr_reader :name
  def initialize(player)
    @name = player
  end
end
