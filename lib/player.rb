class Player

  attr_reader :name, :weapon

  def initialize(name = "anon")
    @name = name
    @weapon = nil
  end

  def has_weapon?
    !!@weapon
  end

  def set_weapon(weapon)
    @weapon = weapon
  end

  def remove_weapon
    @weapon = nil
  end

end
