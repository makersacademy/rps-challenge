
class Player
  attr_reader :name, :weapon

  def initialize(name)
    @name = name
  end

  def weapon_choice(weapon)
    @weapon = weapon.to_sym
  end

end
