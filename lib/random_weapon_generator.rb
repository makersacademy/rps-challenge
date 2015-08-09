module RandomWeaponGenerator 
  AVAILABLE_WEAPONS = [:rock, :paper, :scissors]

  def random_weapon
    AVAILABLE_WEAPONS.sample
  end
end