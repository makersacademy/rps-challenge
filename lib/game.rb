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
    @available_weapons = []
  end

  def register player
    gamers << player
    player
  end

  def make_available weapon
    available_weapons << weapon
    weapon
  end

  def computer_throw player
    moves[player] = available_weapons.sample
  end

end