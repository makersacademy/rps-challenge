class Weapon
  attr_reader :random_weapon, :weapons
  def initialize
    @weapons = [:rock, :paper, :scissors]
  end

  def choose
    @random_weapon = @weapons.sample
  end
end
