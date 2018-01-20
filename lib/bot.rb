class Bot

  attr_reader :moves

  def initialize(moves = [:rock, :paper, :scissors])
    @moves = moves
  end

  def move
    @moves.sample
  end

end
