class Computer
  WEAPONS = [:rock, :paper, :scissors]

  attr_reader :name, :weapon

  def initialize
    @weapon = nil
    @name = "RPSbot"
  end

  def choose_weapon
    @weapon = WEAPONS.sample
  end
end
