require_relative 'player'

class Game
  attr_accessor :player_1, :player_2

  def initialize
    @player_1 = Player.new
    @player_2 = Player.new
  end

  def winner?
    true if (@player_1.won? == true) || (@player_2.won? == true)
  end
end
