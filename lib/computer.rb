class Computer
  attr_reader :points, :name

  STARTING_POINTS = 0

  def initialize(points = STARTING_POINTS)
    @name = "Computer"
    @points = STARTING_POINTS
  end

  def random_choice
    rand(0..3)
  end
end