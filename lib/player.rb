
class Player

  attr_reader :name, :weapon_choice

  def initialize(name, weapon)
    @name = name
    @weapon_choice = weapon.to_sym
  end

end
