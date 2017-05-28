
class Weapon
  def initialize(weapon_type)
    @weapon_type = weapon_type
  end

  def beats?(other_weapon)
    WEAPONS_AND_RULES[@weapon_type.to_s] == other_weapon.to_s
  end

end