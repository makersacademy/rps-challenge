class Computer

attr_reader :weapon

WEAPONS = [:rock, :paper, :scissors]

  def choose_weapon
    @weapon = WEAPONS.sample
  end

end
