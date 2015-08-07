require_relative 'player'
require_relative 'weapon'


class Game

  attr_reader :available_weapons, :gamers

  def initialize
    @gamers = []
  end

  def register player
  gamers << player
  player
  end

end