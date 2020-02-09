require_relative './player.rb'

class Game

  attr_reader :player

  def add_player(player)
    @player = player
  end

end
