class ComputerPlayer

  attr_reader :name, :weapon

  RPS_WEAPONS = [:rock, :paper, :scissors]

  def initialize
    @name = "Ava"
  end

  def select_weapon
    @weapon = RPS_WEAPONS.shuffle.first
  end

end
