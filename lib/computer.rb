class Computer < Player
  WEAPONS = [:rock, :paper, :scissors]
  def initialize(name="Computer")
    @name = name
  end

  def weapon
    @weapon = WEAPONS.sample
  end
end
