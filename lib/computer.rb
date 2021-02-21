require_relative 'weapon'

class Computer
  def type
    @type = Weapon::WEAPONS.sample
  end

  def weapon_choice
    @type.dup
  end
end
