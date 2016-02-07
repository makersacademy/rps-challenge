class Weapon
  def initialize(weapon)
    @weapon = weapon.to_sym
  end

  def beats?(other)
    RULES[weapon] == other
  end

  private

  attr_reader :weapon

  RULES = {
    rock: :scissors,
    paper: :rock,
    scissors: :paper
  }
end