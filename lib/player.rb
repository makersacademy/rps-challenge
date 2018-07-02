class Player
  attr_reader :name
  WEAPONS = [:rock, :scissors, :paper]

  def initialize(name)
    @name = name
  end

  def weapon(weapon)
    fail "not a possible weapon" unless not_weapon?(weapon)
    weapon
  end

  def not_weapon?(weapon)
    WEAPONS.include? weapon.to_sym
  end

end
