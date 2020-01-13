class Player
  DEFAULT_POINTS = 0
  attr_reader :name, :points, :move

  def initialize(name, points = DEFAULT_POINTS)
    @name = name
    @points = points
  end
end
