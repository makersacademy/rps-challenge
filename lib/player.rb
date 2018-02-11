class Player

  DEF_POINTS = 0
  attr_accessor :name, :image, :points

  def initialize(player, points = DEF_POINTS)
    @name = player[:name]
    @image = player[:img]
    @points = points
  end

  def receive_point
    @points += 1
  end
end
