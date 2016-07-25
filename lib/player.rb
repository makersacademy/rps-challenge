require_relative './weapon.rb'

class Player
attr_reader :name, :weapon
  def initialize(name, weapons: Weapons)
    @name = name
    weapons = weapons
    @arsenal = weapons.new
  end

  def choose(weapon)
    @weapon = @arsenal.choose(weapon)
  end
end
