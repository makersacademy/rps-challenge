
class Computer
  attr_reader :moves
  def initialize
    @moves = [:rock, :paper, :scissors]
  end

  def comp_move
    moves.sample
  end
end
