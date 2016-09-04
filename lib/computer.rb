#Understands the random assignment of a weapon

class Computer

  WEAPONS = [:rock, :paper, :scissors]

  attr_reader :weapon

  def initialize
    @weapon = nil
  end

  def weapon_assignment
    @weapon = WEAPONS.sample
  end

end
