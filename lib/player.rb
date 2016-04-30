class Player

  STARTING_POINTS = 0
  POINTS_PER_TURN = 1

  attr_reader :name, :points

  def initialize(name:)
    @name = name
    @points = STARTING_POINTS
  end

  def won_turn
    @points += POINTS_PER_TURN
  end

end
