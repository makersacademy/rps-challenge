require './lib/random_weapon'
require './lib/weapon_factory'

class Game
  attr_reader :weapon1
  
  def initialize(weapon1:, weapon2: RandomWeapon.choose, weapon_factory: WeaponFactory )
    @weapon1 = weapon1
    @weapon2 = weapon2
    @weapon_factory = weapon_factory
  end

  def result
    @weapon_factory.create(@weapon1).fight(@weapon2)
  end
end
