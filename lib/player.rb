class Player
  STARTING_POINTS = 0
  attr_reader :name, :points

  def initialize(name, current_points = STARTING_POINTS) 
    @name = name
    @points = current_points
  end

  def won_round
    @points += 1
  end

  # def save_name(name)
  #   @name = name
  # end

  # def save_move(move)
  #   @move = move
  # end

end
