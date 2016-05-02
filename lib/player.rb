class Player

  attr_reader :name
  attr_reader :points
  DEFAULT_POINTS = 0

  def initialize(name)
    @name = name
    @points = DEFAULT_POINTS
  end

  def add_points
    @points += 1
  end
end



