require_relative 'weapon'

class Computer
  def weapon
    @weapon = Weapon::WEAPONS.sample
  end

  def type
    @weapon.dup
  end
end
