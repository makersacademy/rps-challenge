class Weapon
  WEAPONS = [:rock, :paper, :scissors]

  def self.random_weapon
    WEAPONS.sample
  end

  def self.calc_winning_weapon(weapon_1, weapon_2)
    return nil if weapon_1 == weapon_2
    return weapon_1 if weapon_1 == :rock && weapon_2 == :scissors
    return weapon_1 if weapon_1 == :paper && weapon_2 == :rock
    return weapon_1 if weapon_1 == :scissors && weapon_2 == :paper
    weapon_2
  end
end
