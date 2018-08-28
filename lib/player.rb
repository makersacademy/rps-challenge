class Player
  STARTING_POINTS = 0
  attr_reader :name, :points

  def initialize(name, current_points = STARTING_POINTS) 
    @name = name  
    @points = current_points
  end

  def win_game
    @points += 1
  end

end
