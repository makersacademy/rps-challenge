require_relative "player"
class Game
  attr_reader :player, :attack
  def initialize(player)
    @player = player
    @attack = nil
  end

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def player_name
    @player.name
  end

  def player_attack
    @player.attack
  end

end
