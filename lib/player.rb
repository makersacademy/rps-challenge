require_relative 'game'

class Player

attr_reader :name, :weapon

  def initialize(name)
    @name = name
    @weapon = nil
  end

  def weapon_select(weapon)
    fail 'not a possible weapon' unless Game::WEAPONS.include? weapon.to_sym
    @weapon = weapon.to_sym
  end

end
