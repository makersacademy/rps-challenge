class Player

  attr_reader :name, :weapon

  def initialize(name="Anonymous")
    @name = name
    @weapon = nil
  end

  def select_weapon(weapon)
    @weapon = weapon.to_sym
  end

end
