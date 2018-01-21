class Computer
  attr_reader :move, :name

  def initialize
    @moves = [:rock, :paper, :scissors]
    @name = "Computer"
  end

  def choose(opt = 0)
    @move = random
  end

  private

  def random
    @moves.sample
  end
end
