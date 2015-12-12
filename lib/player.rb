require_relative 'game'

class Player
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def select_weapon(weapon)
    fail 'Not a valid weapon' unless Game::WEAPONS.include? weapon
  end

end
