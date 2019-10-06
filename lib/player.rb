class Player

  attr_reader :name, :weapon, :points

  def initialize(player1)
    @name = player1
    @points = 0
  end

  def move(choice)
    @weapon = choice
  end

  def add_points
    @points += 1
  end

end
