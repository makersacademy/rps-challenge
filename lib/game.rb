require 'player'

class Game

  attr_reader :player, :opponent

  def initialize(player, opponent)
    @player = player
    @opponent = opponent
  end
end
