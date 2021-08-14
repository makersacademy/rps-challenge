class Player

  attr_reader :name, :weapon

  def initialize(name)
    @name = name.capitalize
    @weapon = nil
  end

  def choose(weapon)
    @weapon = weapon
  end

end
