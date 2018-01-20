class Bot

  attr_reader :moves, :move

  def initialize(moves = [:rock, :paper, :scissors])
    @moves = moves
    @move = @moves.sample
  end

end
