require_relative 'game'

class Player
  attr_reader :name, :weapon_choice

  def initialize(name)
    @name = name
  end

  def select_weapon(weapon)
    fail 'Not a valid weapon' unless Game::WEAPONS.include? weapon
    @weapon_choice = weapon
  end

end
