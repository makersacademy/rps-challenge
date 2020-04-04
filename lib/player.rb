require_relative 'weapon'

class Player

  attr_reader :name, :weapon

  def initialize(name)
    @name = name
    @weapon = ""
  end

  def pick_weapon(weapon)
    @weapon = Weapon.new(weapon)
  end

end
