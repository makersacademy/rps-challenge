class Player

  attr_reader :name, :choice

  def initialize(name)
    @name = name
  end

  def choose(weapon)
    @choice = weapon
  end

end
