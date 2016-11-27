class Machine
  MACHINE_NAMES = ["BigDamnHero", "SeekNDstroy", "Harley Quinn", "KillSwitch", "SilentWraith"]
  WEAPONS = [:rock, :paper, :scissors]
  attr_reader :name, :weapon

  def initialize(name = MACHINE_NAMES.sample)
    @name = name
  end

  def choose
    @weapon = WEAPONS.sample
  end

end
