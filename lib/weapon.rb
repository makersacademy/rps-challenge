class Weapon

  attr_reader :type

  def initialize(type)
    @type = type.to_sym
  end

  def winner(other)
    RPS::RULES[type][other.type]
  end
end
