class Weapon

attr_reader :valid_weapons, :chosen_weapon

  def initialize(chosen_weapon)
    @chosen_weapon = chosen_weapon
    @valid_weapons = [:rock, :paper, :scissors]
  end

  def valid_weapon?
    valid_weapons.include? chosen_weapon.downcase.to_sym
  end

end
