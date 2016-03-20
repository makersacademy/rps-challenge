require_relative 'constants'
require_relative 'player'

class Ai

  include Constants
  include Player

  NAME = 'Computer'

  def initialize
    setup(NAME)
  end

  def play(move=nil)
    moves = Constants::MOVES.keys
    @move = moves[rand(moves.count)]
    played!
  end
end
