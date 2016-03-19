require_relative 'constants'

class Ai

  include Constants

  NAME = 'Computer'

  attr_reader :name

  def initialize
    @name = NAME
  end

  def move(move=nil)
    moves = Constants::MOVES.keys
    moves[rand(moves.count - 1)]
  end
end
