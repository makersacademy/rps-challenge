class Weapon
  WEAPONS = [:rock, :paper, :scissors]
  RULES = { rock: :scissors,
            paper: :rock,
            scissors: :paper }

  attr_reader :type

  def initialize(type)
    @type = type.to_sym
  end

  def beats?(other)
    RULES[@type] == other.weapon
  end

  def draw?(other)
    @type == other.weapon
  end
end
