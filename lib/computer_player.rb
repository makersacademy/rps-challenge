class ComputerPlayer

WEAPON_OPTIONS = [:rock, :paper, :scissors]

  attr_reader :weapon_choice

  def initialize
    @weapon_choice = nil
  end

  def choose_weapon
    @weapon_choice = WEAPON_OPTIONS.sample
  end

end
