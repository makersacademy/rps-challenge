class Moves
  attr_reader :list

  def initialize
    @list = [:rock, :paper, :scissors]
  end

  def random_move
    list.sample
  end
end
