class Computer
  HANDICAP = 0

  attr_reader :points

  def initialize(points = HANDICAP)
    @points = points
  end
end
