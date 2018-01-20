class Computer
  attr_reader :move

  def initialize
    @moves = [:rock, :paper, :scissors]
  end

  def choose
    @move = random
  end

  private

  def random
    @moves.sample
  end
end
