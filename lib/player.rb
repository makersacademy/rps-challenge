class Player

  attr_reader :name, :weapon

  def initialize(name = 'Player')
    @name = name
  end

  def choose(weapon)
    @weapon = weapon.to_sym
  end

end
