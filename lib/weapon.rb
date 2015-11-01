require_relative 'rules'

class Weapon
  include Rules

  attr_reader :type

  def initialize(type)
    @type = type.to_sym
  end

  def beats?(other)
    Rules::RULES[type] == other
  end

end
