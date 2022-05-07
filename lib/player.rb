class Player

  attr_reader :name, :weapon

  def initialize(name)
    @name = name
  end

  def select_weapon(weapon)
    @weapon = weapon
  end

end
