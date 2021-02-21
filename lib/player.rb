class Player
  attr_reader :name, :weapon

  def initialize(name)
    @name = name
    @weapon = nil
  end

  def choice(weapon)
    @weapon = weapon
  end
end
