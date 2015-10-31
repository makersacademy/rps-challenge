require_relative 'game'

class Player

  attr_reader :weapon, :name

  WEAPON_ERROR = "Please choose from either rock, paper or scissors"

  def initialize(name)
    @name = name
  end

  def weapon=(weapon)
    fail WEAPON_ERROR if !(Game::WEAPONS.include?(weapon.to_sym))
    @weapon = weapon.to_sym
  end

end
