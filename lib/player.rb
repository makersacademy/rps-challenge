class Player

  attr_reader :name, :points

  POINTS = 1

  def initialize(name)
    @name = name
    @score = 0
  end

  def receive_points
    @score += POINTS
  end

end
