class Game
  attr_reader :player

  def initialize(player)
    @player = player
  end

  def self.new_game(player)
    @game = Game.new(player)
  end

  def self.current_game
    @game
  end
end
