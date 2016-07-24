class Player

  attr_reader :name, :weapon

  def initialize(name)
    @name = name
    @weapon = nil
  end

  def choose(weapon)
    @weapon = weapon
  end

  def get_weapon
    @weapon
  end

end
