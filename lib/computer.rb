require_relative 'weapon'

class Computer

  attr_reader :weapon

  def weapon
    @weapon = Weapon::WEAPONS.sample
  end

end