class ComputerPlayer

  RPS_WEAPONS = [:rock,:paper,:scissors]

  def name
    'RoboRPS'
  end

  def weapon
    RPS_WEAPONS.shuffle.first
  end

end
