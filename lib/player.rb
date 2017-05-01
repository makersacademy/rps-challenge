class Player
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def weapon(weapon)
    @weapon = weapon
  end

end
