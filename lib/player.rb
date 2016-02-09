require_relative 'game'

class Player
  attr_reader :name,:move

  MOVES = Game::MOVES

  def initialize(name)
    @name = name
  end

  def make_move(input_move)
    fail ArgumentError unless MOVES.include? input_move
    @move = input_move
  end
end
