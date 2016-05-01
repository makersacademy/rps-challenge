class ComputerPlayer

  attr_reader :weapon, :score

  RPS_WEAPONS = [:rock,:paper,:scissors]

  def initialize
    @score = 0
  end

  def name
    'RoboRPS'
  end

  def choose_weapon
    @weapon = RPS_WEAPONS.shuffle.first
  end

  def add_point
    @score += 1
  end

end
