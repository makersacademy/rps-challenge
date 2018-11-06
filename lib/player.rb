class Player
  STARTING_POINTS = 0
  attr_reader :name, :points

  def initialize(name, current_points = STARTING_POINTS) 
    @name = name
    @points = current_points
  end

  def choice(option)
    @option = option
  end


  def won_round
    @points += 1
  end


end
