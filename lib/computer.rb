require_relative 'game'

class Computer

  WEAPONS = [:rock, :paper, :scissors]
  attr_reader :name, :weapon

  def initialize
    @name = "Enigma"
  end

  def weapon_choice(weapon = nil)
    @weapon = WEAPONS.sample
  end

end
