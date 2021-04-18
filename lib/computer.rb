class Computer 

  attr_accessor :weapon

  WEAPONS = ['Rock', 'Paper', 'Scissors']

  def initialize(weapon = WEAPONS)
    @weapon = weapon
  end

  def rand_weapon
    @weapon = WEAPONS.sample
  end
end
