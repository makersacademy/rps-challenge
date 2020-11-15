class Weapon
  attr_reader :weapon_choice

  def initialize(weapon_choice=nil)
    @weapon_choice = weapon_choice
    @weapons = %w(Rock Paper Scissors)
  end

  def weapon_generator
    @weapons.sample
  end

end