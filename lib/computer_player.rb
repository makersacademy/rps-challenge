class ComputerPlayer

  attr_reader :name

  RPS_WEAPONS = [:rock, :paper, :scissors]

  def initialize
    @name = "Ava"
  end

  def weapon
    RPS_WEAPONS.shuffle.first
  end

end
