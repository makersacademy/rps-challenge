class ComputerTurn

WEAPONS = [:rock, :scissors, :paper]

attr_reader :weapon

  def initialize
    @weapon = WEAPONS.sample
  end

end
