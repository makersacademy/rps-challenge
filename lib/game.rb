# Manages interactions between players

class Game

  attr_reader :player, :weapons

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

end
