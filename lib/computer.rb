class Computer
  attr_reader :name, :weapon

  WEAPONS = [:rock, :paper, :scissors]

  def initialize
    @name = "Skynet"
    @weapon = WEAPONS.sample
  end
end
