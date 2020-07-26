class Player

  attr_reader :name, :points, :move

  ZERO_POINTS = 0
  ONE_POINT = 1

  def initialize(name)
    @name = name
    @points = ZERO_POINTS
    @move = nil
  end

  def get_move(move)
    @move = move
  end

  def gain_point
    @points += ONE_POINT
  end

end
