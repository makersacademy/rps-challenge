require_relative './player'
class Game

  def initialize(player)
    @players = [player]
  end

  def player_1
    @players.first
  end

end