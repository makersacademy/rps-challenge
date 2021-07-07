class Player

  attr_reader :name, :choice

  def initialize(name)
    @name = name
    @choice = nil
  end

  def choice
    @choice
  end

  def choose(weapon)
    @choice = weapon
  end
end
