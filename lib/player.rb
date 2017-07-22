class Player
  attr_reader :name, :weapon

  def initialize(name = "HAL")
    @name = name
  end

  def play_weapon(weapon)
    @weapon = weapon
  end
end
