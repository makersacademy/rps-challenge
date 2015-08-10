class Weapon

attr_accessor :weaker_weapons, :name

  def initialize 
    @weaker_weapons = []
  end

  def is_superior_to other_weapon
    weaker_weapons << other_weapon
  end

  def beats? other_weapon
    weaker_weapons.include?(other_weapon)
  end

end