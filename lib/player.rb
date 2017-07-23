class Player

  attr_reader :name, :weapon

  def initialize(name)
    @name = name
  end

  def select_attack(weapon)
    fail("Illegal weapon detected!") unless Game::WEAPONS.include? weapon.to_sym
    @weapon = weapon.to_sym
  end
end
