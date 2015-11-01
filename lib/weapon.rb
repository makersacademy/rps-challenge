class Weapon

  attr_reader :type

  def initialize (type)
    @type = type.to_sym
  end

  # def beats?(other_weapon)
  #   Game::RULES[type][other_weapon.type]
  # end

end
