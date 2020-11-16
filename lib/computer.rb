class Computer

  attr_reader :opponents_weapon

  def initialize(opponents_weapon = Weapon.new)
    @opponents_weapon = opponents_weapon
  end

  def random_weapon
    @opponents_weapon.weapon_generator
    @opponents_weapon.weapon_choice
  end
end