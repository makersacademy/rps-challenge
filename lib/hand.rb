class Hand
  ALLOWED_SHAPES = [:rock, :paper, :scissors]
  attr_reader :name, :shape


  def initialize(name:)
    @name = name
  end


  def throw_hand(shape=randomise)
    fail 'This is not a recognised RPS shape.' unless ALLOWED_SHAPES.include?(shape)
    @shape = shape
    self
  end

private
  def randomise
    @shape = ALLOWED_SHAPES[ rand(3) ]
  end

end

# end


