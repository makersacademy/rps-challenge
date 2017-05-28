class Computer
  WEAPONS = [:rock, :paper, :scissors]
  attr_reader :weapon

  def name
    'Computer'
  end

  def choose_weapon
    @weapon = Weapon.new(WEAPONS.sample)
  end
end
