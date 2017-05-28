require_relative 'player'

class Game

  attr_reader :player

  def initialize(player = Player.new)
    @player = player
  end

end
