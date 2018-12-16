require_relative 'player'

class Game

  def initialize(player)
    @player = player
  end

  def name
    @player.name
  end
end
