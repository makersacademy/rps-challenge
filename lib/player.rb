require_relative 'game'

class Player
  attr_reader :name, :weapon

  def initialize(name)
    @name = name
  end

  def weapon=(new_weapon)
    fail 'Not a valid weapon' unless Game::WEAPONS.include? new_weapon
    @weapon = new_weapon
  end
end
