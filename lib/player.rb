class Player
  attr_reader :name, :points, :choice

  STARTING_POINTS = 0

  def initialize(name)
    @name = name
    @points = STARTING_POINTS
  end

  def give_point
    @points += 1
  end

  def move(choice)
    @choice = choice
  end
end