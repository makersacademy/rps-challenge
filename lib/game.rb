require_relative 'player'

class Game

  attr_reader :players

  def initialize(player)
    @players = [player]
  end

  def first_player_name
    @players[0].name
  end

end
