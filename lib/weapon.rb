class Weapon
  attr_reader :type

  RULES = { rock: :scissors,
            paper: :rock,
            scissors: :paper }

  def initialize(type)
    @type = type.to_sym
  end

  def beats?(other)
    RULES[type] == other.type
  end
end
