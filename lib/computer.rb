
require './lib/player'
require './lib/computer'

class Computer
  attr_reader :moves
  def initialize
    @moves = [:rock, :paper, :scissors]
  end

  def move
    moves.sample
  end
end
