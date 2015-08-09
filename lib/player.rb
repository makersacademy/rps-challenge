require_relative 'moves'

class Player
  attr_accessor :opponent, :moves, :choice

  def initialize
    @choice = []
  end

  def choose(move)
    fail 'Not a valid move!' unless moves.list.include?(move)
    @choice << move
  end

  def random_move
    @choice << moves.random_move
  end

  def winner?
    moves.beats?(choice.last, opponent.choice.last)
  end
end
