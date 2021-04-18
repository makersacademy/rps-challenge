class Beatmap
  MAP = {
    rock: :scissors,
    scissors: :paper,
    paper: :rock
  }
  attr_reader :weapon

  def initialize(weapon)
    @weapon = weapon.to_sym
  end

  def win?(item)
    MAP[@weapon] == item.weapon
  end

  def draw?(item)
    @weapon == item.weapon
  end
end
