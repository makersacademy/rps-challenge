class Weapon

  attr_reader :name, :wins

  def initialize(name)
    @name = name
    @wins = []
  end

  def add_weapon(weapon)
    @wins << weapon
  end

end
