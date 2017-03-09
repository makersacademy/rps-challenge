require_relative 'weapon'

class Player

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def check_weapon(weapon)
    raise 'Weapon does not exist' unless weapon_exist?(weapon.to_sym)
    true
  end

  private

  def weapon_exist?(weapon)
    Weapon::WEAPONS.include?(weapon)
  end

end
