

class Player
  attr_reader :name, :weapon

  def initialize(name)
    @name = name
  end

  def set_weapon(weapon)
    fail 'not a possible weapon' unless Game::WEAPONS.include? weapon.to_sym
    @weapon = weapon.to_sym
  end

end