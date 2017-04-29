class Computer
  WEAPONS = [:rock, :paper, :scissors]

  def weapons
    WEAPONS
  end

  def random_weapon
    WEAPONS.sample
  end

end
