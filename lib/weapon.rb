class Weapon
  attr_reader :type

  def initialize(type)
    @type = type.to_sym
  end

  def beats?(other)
    Game::RULES[type].include?(other.type)
  end
end
