class Player

  attr_reader :name, :weapon

  def initialize(name)
    @name = name
  end

  def select_attack(weapon)
    @weapon = weapon
  end
end
