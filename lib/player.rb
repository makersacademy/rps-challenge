class Player
  attr_reader :name, :weapon

  def initialize(name)
    @name = name
  end

  def options(weapon)
    @weapon = weapon
  end
end
