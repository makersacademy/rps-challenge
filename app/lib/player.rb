class Player

  attr_reader :name, :weapon

  def initialize(name = 'Unknown Player')
    @name = name
    @weapon = :no_weapon
  end

  def set_name(name)
    @name = name
  end

  def choose(weapon)
    @weapon = weapon
  end



end