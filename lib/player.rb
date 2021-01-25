class Player
  attr_reader :name, :choice
  def initialize(name)
    @name = name
  end

  def weapon(weapon)
    @choice = weapon
  end
end
