
require './lib/player'
require './lib/computer'
require './lib/Win_matrix'
class Computer
  include Win_matrix

  attr_reader :moves, :name, :move
  def initialize
    @moves = WIN_MATRIX
    @name = 'Computer'
  end

  def random_move
    @move = moves.sample
  end
end
