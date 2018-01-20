class Computer
  attr_reader :move

  def initialize
    @moves = [:rock, :paper, :scissors]
  end

  def choose
    @move = @moves[random]
  end

  private

  def random
    rand(@moves.length)
  end
end
