class Weapon
  attr_reader :type

  RULES = { rock: :scissors,
            paper: :rock,
            scissors: :paper }

  WEAPONS = [:rock, :paper, :scissors]

  def initialize(weapon_type)
    @type = weapon_type.downcase.to_sym
  end

  def beats?(other_weapon)
    return true if RULES[type] == other_weapon.type
  end
end
