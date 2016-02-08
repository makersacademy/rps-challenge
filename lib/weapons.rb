class Weapons

  attr_reader :type

  def initialize(type)
    @type = type.to_sym
  end

  def beats?(other)
    other.type == RULES[@type]
  end

  RULES = { rock: :scissors,
          paper: :rock,
          scissors: :paper }

end