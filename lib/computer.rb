require_relative 'game'

class Computer
  WEAPONS = [Weapon.new(:rock), Weapon.new(:paper), Weapon.new(:scissors)]

  attr_reader :weapon

  def name
    'Computer'
  end

  def choose_weapon
    @weapon = WEAPONS.sample
  end
end
