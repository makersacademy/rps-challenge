require_relative 'player'

class Game

  attr_reader :players

  def initialize(player)
    @players = [player]
  end

end
