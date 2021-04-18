class Beatmap
  MAP = {
    rock: [:scissors, :lizard],
    scissors: [:paper, :lizard],
    paper: [:rock, :spock],
    lizard: [:spock, :paper],
    spock: [:scissors, :rock]
  }
  attr_reader :weapon

  def initialize(weapon)
    @weapon = weapon.to_sym
  end

  def win?(item)
    MAP[@weapon].include?(item.weapon)
  end

  def draw?(item)
    @weapon == item.weapon
  end
end