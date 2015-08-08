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
    opponent_move = opponent.choice.last
    case choice.last
    when :rock then opponent_move == :scissors ? true : false
    when :paper then opponent_move == :rock ? true : false
    when :scissors then opponent_move == :paper ? true : false
    end
  end
end
