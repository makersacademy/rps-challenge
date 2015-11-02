class Computer
  WEAPONS = %w(Rock Paper Scissors)

  def move
    WEAPONS.sample
  end
end
