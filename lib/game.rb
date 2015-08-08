require_relative 'player'
require_relative 'weapon'
require_relative 'score_calculator'


class Game

  include Score_Calculator 

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