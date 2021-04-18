class Computer 

  attr_accessor :weapon, :points

  WEAPONS = ['Rock', 'Paper', 'Scissors']
  POINTS  = 0

  def initialize(weapon = WEAPONS, points = POINTS)
    @weapon = weapon
    @points = points
  end

  def rand_weapon
    @weapon = WEAPONS.sample
  end
end
