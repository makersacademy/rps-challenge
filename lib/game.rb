require_relative "player"
class Game
  attr_reader :player, :attack
  def initialize(player)
    @player = player
    @attack
  end

  def player_name
    @player.name
  end
end
