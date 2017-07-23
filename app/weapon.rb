class Weapon
  attr_reader :type

  def initialize(type = '')
    @type = type.to_sym
  end

  def beats?(other)
    RULES.key(other.to_sym).equal? type.freeze
  end
end
