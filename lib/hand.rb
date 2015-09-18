class Hand

  ALLOWED_SHAPES = [:rock, :paper, :scissors]

  def shape?
    # fail 'No RPS shape set.' unless @shape
    @shape
  end

  def shape!(shape)
    # fail 'This is not a recognised RPS shape.' unless ALLOWED_SHAPES.include? shape
    @shape = shape
  end

  def randomise
    @shape = ALLOWED_SHAPES[ rand(3) ]
  end

end