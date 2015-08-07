require_relative 'player'
require_relative 'weapon'


class Rock_Paper_Scissors

  attr_reader :available_weapons, :gamers
  attr_accessor :moves

  def initialize
    @gamers = []
    @moves = {}
  end

  def register player
  gamers << player
  player
  end

end