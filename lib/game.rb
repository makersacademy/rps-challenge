require_relative './player.rb'

class Game
  attr_reader :players

  def initialize(player_1)
    @players = [player_1]
  end

  # def add_player(player)
  #   @players << push
  # end
end
