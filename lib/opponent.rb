class Opponent
  SHAPE = [:rock, :paper, :scissors] 

  def shape 
    SHAPE.sample # Give you a result from your opponent at random.
  end
end