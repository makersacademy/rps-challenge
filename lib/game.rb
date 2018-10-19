require_relative 'player'

class Game

  attr_reader :player

  def initialize(player)
    @player = player
    @turn = 1
  end

end
