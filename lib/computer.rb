class Computer

  attr_reader :computer_weapon

  def initialize
    @computer_weapon
  end

  def random_weapon
    @computer_weapon = Weapon.new.weapon_generator
    @computer_weapon
  end
end