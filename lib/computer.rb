
require './lib/player'
require './lib/computer'

class Computer
  attr_reader :moves, :name, :move
  def initialize
    @moves = [:rock, :paper, :scissors]
    @name = 'Computer'
  end

  def random_move
    @move = moves.sample
  end
end
