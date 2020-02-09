require_relative './game'

class Player

  attr_reader :name, :weapon

  def initialize(name)
    @name = name
  end

  def choose(weapon)
    weapon_sym = weapon.downcase.to_sym
    fail 'Not a possible weapon' unless Game::WEAPONS.include?(weapon_sym)
    
    @weapon = weapon_sym
  end

end
