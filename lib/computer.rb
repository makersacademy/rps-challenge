class Computer

  WEAPONS = [:rock, :paper, :scissors, :lizard, :spock]

  attr_reader :weapon

  def weapon_choice
    @weapon = WEAPONS.sample
  end
end
