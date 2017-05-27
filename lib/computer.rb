class Computer
  WEAPONS = [:rock, :paper, :scissors]

  def name
    'Computer'
  end

  def choose_weapon
    WEAPONS.sample
  end
end
