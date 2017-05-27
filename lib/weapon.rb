class Weapon

  RULES = {
    rock: [:scissors],
    paper: [:rock],
    scissors: [:paper]
  }

  attr_reader :type

  def initialize(type)
    @type = type.to_sym
  end

  def beats?(opponent)
    RULES[type].include?(opponent.type)
  end
  
end
