class ComputerPlayer

WEAPON_OPTIONS = [:rock, :paper, :scissors]

  attr_reader :weapon_choice, :name

  def initialize
    @weapon_choice = nil
    @name = "Computer"
  end

  def choose_weapon
    @weapon_choice = WEAPON_OPTIONS.sample
  end

end
