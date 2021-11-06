require "player"

class Game

  attr_reader :player_one, :player_two

  def initialize(player_one, player_two = Player.new)
    @player_one = player_one
    @player_two = player_two
  end

  def single_game?
    @player_two.computer?
  end

end
