class Player

  STARTING_POINTS = 0
  POINTS_PER_WIN = 1

  attr_reader :name, :points

  def initialize(name)
    @name = name
    @points = STARTING_POINTS
  end

  def win_point
    @points += POINTS_PER_WIN
  end

end