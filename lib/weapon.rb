class Weapon

  attr_reader :weapons

  def initialize
    @weapons = [:rock, :paper, :scissors]
  end

  def random_weapon
    @weapons.sample
  end

end
