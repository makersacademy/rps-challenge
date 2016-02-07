class Player

  attr_reader :name, :weapon

  def initialize(name = 'Player 1')
    @name = name
    @weapon = nil
  end

  def choose(weapon)
    @weapon = weapon.to_sym
  end

end
