class Player
  attr_reader :name, :weapon
  def initialize(name, weapon = Weapon.new)
    @name = name
    @weapon = weapon
  end

  def play(weapon_name)
    @weapon = Weapon.new(weapon_name)
  end

  def valid_weapon?(weapon_name)
    RULES.keys.include? weapon_name.to_sym
  end
end
