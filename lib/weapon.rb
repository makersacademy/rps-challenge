class Weapon

attr_reader :valid_weapons, :chosen_weapon

  def initialize(chosen_weapon)
    @chosen_weapon = chosen_weapon.to_sym
    @valid_weapons = [:rock, :paper, :scissors]
  end

  def valid_weapon?
    valid_weapons.include? chosen_weapon
  end

end
