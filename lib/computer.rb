
class Computer

attr_reader :weapons, :selected_weapon
attr_accessor :opponent

  def initialize
    @weapons = [:rock,:paper,:scissors]
  end

  def randomize_weapon
    @selected_weapon = weapons.sample
  end

end
