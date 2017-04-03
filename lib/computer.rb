class Computer

attr_reader

  def rand_choice
    SHAPES.sample
  end

  private
  SHAPES = [:rock, :paper, :scissors]
end
