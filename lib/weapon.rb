class Weapon

  attr_reader :type

  def initialize(type)
    @type = type.to_sym
  end

  def beats(other_weapon)
    # other is an another instance of weapon class
    # will return true if follows the RULES hash
    Game::RULES[type][other_weapon.type]
  end
end
