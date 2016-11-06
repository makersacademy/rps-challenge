
class Player
  attr_reader :name, :weapon

  def initialize(name)
    @name = name
  end

  def weapon_choice(weapon = nil)
    @weapon = weapon.to_sym unless weapon == nil
  end

end
