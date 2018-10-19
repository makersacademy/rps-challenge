class Game
  attr_reader :player_1

  @current_game = nil

  def initialize(player_1)
    @player_1 = player_1
  end

  def choose_weapon(weapon)
    @player_1.choose_weapon(weapon)
  end

  def self.store_game(game)
    @current_game = game
  end

  def self.current_game
    @current_game
  end

  def random_weapon
    ["ROCK", "PAPER", "SCISSORS"].sample
  end
end
