class Computer
  WEAPONS = [:rock, :paper, :scissors]

  def move
    WEAPONS.sample
  end
end
