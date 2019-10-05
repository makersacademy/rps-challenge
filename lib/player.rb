class Player

  attr_reader :name, :weapon, :points

  def initialize(player1)
    @name = player1
    @points = 0
  end

  def move(choice)
    @weapon = choice
  end

end
