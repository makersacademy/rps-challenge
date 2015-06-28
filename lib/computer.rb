
class Computer

attr_reader :weapons, :selected_weapon

  def initialize
    @weapons = [:rock,:paper,:scissors]
  end

  def randomize_weapon
    @selected_weapon = weapons.sample
  end

end
