require_relative './player.rb'

class Game
  attr_reader :players

  RULES = { rock: :scissors,
            paper: :rock,
            scissors: :paper }

  def initialize(player_1, player_2 = Player.new("Computer"))
    @players = [player_1, player_2]
  end
end
