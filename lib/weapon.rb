
class Weapon
  attr_reader :weapon_type

  def initialize(weapon_type)
    @weapon_type = @weapon_type.to_sym
  end

end
