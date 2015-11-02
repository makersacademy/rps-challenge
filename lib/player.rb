class Player

  attr_reader :name, :weapon

  def initialize (name, weapon = nil)
    @name = name
    @weapon = weapon
  end

  def choose_weapon (weapon)
    @weapon = weapon.to_sym
  end
end