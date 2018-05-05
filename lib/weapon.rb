class Weapon

  attr_reader :type

  def initialize(type, rules)
    @type = type
    @rules = rules
  end

  def beats?(other_weapon)
    @rules[type].include?(other_weapon.type)
  end

end
