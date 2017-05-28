require_relative 'player'

class Game

  attr_reader :player, :choice

  def initialize(player = Player.new)
    @player = player
  end

end
