class Player

  attr_reader :name, :points

  STARTING_POINTS = 0

  def initialize(name, points = STARTING_POINTS)
    @name = name
    @points = points
  end

  def increase_points
    @points += 10
  end


end
