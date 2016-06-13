class ComputerPlayer

  attr_reader :name, :weapon, :score

  RPS_WEAPONS = [:rock, :paper, :scissors]

  def initialize
    @name = "Ava"
    @score = 0
  end

  def select_weapon
    @weapon = RPS_WEAPONS.shuffle.first
  end

  def add_point
    @score += 1
  end

end
