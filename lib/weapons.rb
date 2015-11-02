class Weapons
  WEAPONS = [:rock, :paper, :scissors]
  RULES = {rock: :scissors, paper: :rock, scissors: :paper}

  def random_weapon
    WEAPONS.sample
  end

  def result( weapon1, weapon2)
    return :draws if weapon1 == weapon2
    return :wins if RULES[weapon1] == weapon2
    :looses
  end
end