require_relative './player.rb'
require_relative './item.rb'
require_relative './random.rb'
require_relative './results.rb'

class Game

  attr_reader :player

  def add_player(player)
    @player = player
  end

end
