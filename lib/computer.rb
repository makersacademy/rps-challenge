class Computer
  WEAPONS = %w(rock paper scissors)

  def move
    WEAPONS.sample
  end
end
