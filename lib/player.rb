class Player
  attr_accessor :weapon, :name

  def initialize(name)
    @name = name
  end

  def choose_weapon(weapon)
    @weapon = weapon
  end

end
