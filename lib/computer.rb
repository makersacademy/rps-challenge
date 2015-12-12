require 'player'

class Computer < Player
  SHAPES = [:rock, :paper, :scissors]

  def choose
    @choice = SHAPES[Kernel.rand(3)]
  end
end
