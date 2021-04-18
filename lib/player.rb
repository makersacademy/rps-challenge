class Player

  attr_reader :name
  attr_accessor :weapon, :points

  POINTS = 0

  def initialize(name, points = POINTS)
    @name = name
    @points = points
  end
end
