class Machine
  MACHINE_NAMES = ["BigDamnHero", "SeekNDstroy", "Harley Quinn", "KillSwitch", "SilentWraith"]
  WEAPONS = [:rock, :paper, :scissors]
  attr_reader :name

  def initialize
    @name = MACHINE_NAMES.sample
  end

  def choose
    WEAPONS.sample
  end

end
