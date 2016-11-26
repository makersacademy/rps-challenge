# Manages interactions between players

class Game

  attr_reader :player, :weapons, :opponent

  def self.create(game_klass, player, weapons_module)
    @game = game_klass.new(player, weapons_module)
  end

  def self.instance
    @game
  end

  def initialize(player, weapons_module)
    @player = player
    @weapons = weapons_module.list
  end

  def generate_opponent(opponent_klass)
    @opponent = opponent_klass.new
  end

end
