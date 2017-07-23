class Player

  attr_reader :name
  attr_accessor :weapon

  def initialize(name)
    @name = name
  end

  def get_weapon(weapon)
    @weapon = weapon
  end
end
