module RandomWeaponGenerator 
  AVAILABLE_WEAPONS = [:rock, :paper, :scissors, :spock, :lizard]

  def random_weapon
    AVAILABLE_WEAPONS.sample
  end
end