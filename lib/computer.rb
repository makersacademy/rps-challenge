class Computer

  MOVES = [:rock, :paper, :scissors]
  STARTING_POINTS = 0

  attr_reader :points

  def initialize(points = STARTING_POINTS)
    @points = points
  end

  def select_random_move
    MOVES.sample
  end

  def increase_points
      @points += 10
  end
end
