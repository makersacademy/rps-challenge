
class Computer

attr_reader :weapons, :random_weapon

  def initialize
    @weapons = [:rock,:paper,:scissors]
  end

  def randomize_weapon
    @random_weapon = weapons.sample
  end

end
