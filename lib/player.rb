class Player
  attr_reader :name

  def initialize(name)
    @name = name
    @weapon = nil
  end

  def weapon(weapon)
    @weapon = weapon
  end
end
