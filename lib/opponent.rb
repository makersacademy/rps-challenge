class Opponent

POSSIBLE_SHAPES = [:rock, :paper, :scissors]

  def shape
    POSSIBLE_SHAPES.sample
  end
end
