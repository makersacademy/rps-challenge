class Opponent
  SHAPES = [:rock, :paper, :scissors]
  def shape
    #.sample will return random element on an array
    SHAPES.sample
  end
end
