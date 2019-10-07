class Weapon
  attr_accessor :type

  RULES = { rock: :scissors,
            paper: :rock,
            scissors: :paper }

  WEAPONS = [:rock, :paper, :scissors]

  def initialize(weapon_type)
    @type = weapon_type.downcase.to_sym
  end

  def beats(other_weapon)
    return "YOU HAVE WON!" if RULES[type] == other_weapon.type
    return "it is a tie." if type == other_weapon.type
    return "you have lost." if RULES[other_weapon.type] == type
  end
end
