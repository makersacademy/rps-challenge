require_relative './player'

class Computer < Player
  SHAPES = [:rock, :paper, :scissors]

  def choose _
    @choice = SHAPES[Kernel.rand(3)]
  end
end
