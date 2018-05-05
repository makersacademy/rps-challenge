class Player

  attr_reader :name

  def initialize(name)
    @name = name
    @weapon = nil
  end

  def has_weapon?
    @weapon
  end

  def set_weapon(weapon)
  end

end
