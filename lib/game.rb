require './lib/player.rb'
class Game
  def add_player(player)
    @player = player
  end

  def playername
    @player.username
  end
end
