class Weapon
  attr_reader :name, :type

  RULES = {
    rock: :scissors,
    scissors: :paper,
    paper: :rock
  }

  def initialize(name)
    @name = name
    @type = name.to_sym
  end

  def <=>(other)
    return 1 if RULES[type] == other.type
    return -1 if RULES[other.type] == type
    0
  end
end
