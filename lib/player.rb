class Player

  attr_reader :name, :weapon

  def initialize(name)
    @name = name
    @weapon = ""
  end

  def take_weapon(weapon_name)
    @weapon = weapon_name
  end

end
