class Computer

  attr_accessor :choice
  attr_reader :moves

  DEFAULT_MOVES = [:rock, :paper, :scissors]

  def initialize
    @moves = DEFAULT_MOVES
  end

  def move
    @choice = @moves[random_move].to_s.capitalize
  end

  private

  def random_move
    Kernel.rand(3)
  end

end
