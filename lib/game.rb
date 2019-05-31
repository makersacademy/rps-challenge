require './lib/player.rb'
class Game
  attr_accessor :move
  def add_player(player)
    @player = player
  end

  def playername
    @player.username
  end
end
