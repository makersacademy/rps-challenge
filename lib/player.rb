class Player
  attr_reader :name, :points

  STARTING_POINTS = 0

  def initialize(name)
    @name = name
    @points = STARTING_POINTS
  end
end