class Opponent

  attr_reader :weapons
  attr_accessor :weapon

  def initialize
    @weapons = [:rock, :paper, :scissors]
  end

  def choose_weapon
    self.weapon = weapons.sample
  end

  def add_weapon(weapon)
    weapons << weapon
  end

end
