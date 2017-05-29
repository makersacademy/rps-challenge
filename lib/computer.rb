class Computer
  attr_reader :choice

  SHAPES = [:rock, :paper, :scissors]

  def initialize
    @choice = random_choice
  end

  def random_choice
    SHAPES.sample
  end

end
