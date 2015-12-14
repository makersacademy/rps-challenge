require_relative './player'

class Computer < Player
  SHAPES = [:rock, :paper, :scissors]

  def choose
    @choice = SHAPES.sample
  end
end
