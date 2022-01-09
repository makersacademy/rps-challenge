require_relative 'player'

class Game
  attr_reader :player_one
  def initialize(player_one = Player.new)
    @player_one = player_one
  end
end
