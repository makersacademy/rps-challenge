require_relative 'game'

class Player

  attr_reader :name, :weapon_choice

  def initialize(name)
    @name = name
  end

  def choose_weapon(weapon)
    fail 'Not a valid weapon' if !Game::WEAPONS.include? weapon
    @weapon_choice = weapon
  end
end
