class Weapon
  attr_reader :type
  def initialize(weapon_name)
    @type = weapon_name.to_sym
  end

  def beats?(other_weapon)
    Game::RULES[type].include? other_weapon.type
  end

  def to_s
    type.to_s
  end
end
