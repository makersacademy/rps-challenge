class Weapon
  attr_reader :type
  
  RULES = {
    rock: :scissors,
    scissors: :paper,
    paper: :rock
  }

  def initialize(type)
    @type = type.to_sym
  end

  def <=>(other)
    return 1 if RULES[type] == other.type
    return -1 if RULES[other.type] == type
    0
  end
end
