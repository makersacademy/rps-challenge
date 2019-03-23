require_relative 'weapon'

class Bot

  def initialize
    @weapon = Weapon::WEAPONS.sample
  end

  def weapon
    @weapon = Weapon::WEAPONS.sample
  end

  def choice
    @weapon
  end

end
