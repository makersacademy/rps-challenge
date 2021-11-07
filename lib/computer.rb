class Computer
  WEAPONS = %w[Rock Paper Scissors]
 
  def choose
    WEAPONS.sample
  end
end