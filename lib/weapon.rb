class Weapon
  RULES = {
    rock: :scissors,
    paper: :rock,
    scissors: :paper
  }
  attr_reader :weapon

  def initialize(weapon)
    @weapon = weapon.to_sym
  end

  def beats?(other)
    RULES[weapon] == other
  end
end