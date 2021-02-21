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
    RULES[@type] == other.type
  end

  def draw?(other)
    @type == other.type
  end
end
