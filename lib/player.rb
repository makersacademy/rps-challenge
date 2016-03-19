class Player
  attr_reader :name, :weapon

  def initialize(name)
    @name = name
    @weapon = nil
  end

  def pick(weapon)
    @weapon = weapon
  end
end
