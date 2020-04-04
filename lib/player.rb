class Player

  attr_reader :name

  def initialize(name)
    @name = name
    @weapon = ""
  end

  def pick_weapon(weapon)
    @weapon = weapon
  end

end