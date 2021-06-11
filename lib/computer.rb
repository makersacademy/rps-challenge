class Computer
  attr_reader :name, :points

  STARTING_POINTS = 0

  def initialize
    @name = "Computer"
    @points = STARTING_POINTS
  end

  def random_choice
    rand(0..3)
  end
end