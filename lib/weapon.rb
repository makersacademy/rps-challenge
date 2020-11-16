class Weapon
  attr_reader :weapon_choice, :weapons, :weapon_values

  def initialize(weapon_choice=nil)
    @weapon_choice = weapon_choice
    @weapons = %w(rock paper scissors)
    @weapon_values = {rock: 0, paper: 1, scissors: 2}
  end

  # The weapon_choice is chosen either via the argument upon initialization or via random sampling
  def weapon_generator
    @weapon_choice = @weapons.sample
  end

  def retrieve_value
    @weapon_values[@weapon_choice.to_sym]
  end

end