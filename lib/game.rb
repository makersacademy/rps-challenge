class Game
  attr_reader :player

  @current_game = nil

  def initialize(player)
    @player = player
  end

  def self.store_game(game)
    @current_game = game
  end

  def self.current_game
    @current_game
  end
end
