require_relative './player.rb'

class Game
  attr_reader :players
  player_2 = Player.new("Computer")

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
  end
end
