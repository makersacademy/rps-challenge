require_relative 'constants'
require_relative 'player'

class Ai

  include Constants
  include Player

  NAME = 'Computer'

  def initialize
    setup(NAME)
  end

  def move(move=nil)
    moves = Constants::MOVES.keys
    moves[rand(moves.count - 1)]
  end
end
