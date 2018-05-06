require_relative './player'

class Computer < Player

  WEAPONS = [:rock, :paper, :scissors, :spock, :lizard]

  def initialize
    super
    @name = "The Computer"
  end

  def give_weapon
    @weapon = WEAPONS.sample
  end

end
