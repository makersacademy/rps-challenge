class Computer

WEAPONS = ["Rock", "Paper", "Scissors"]

  def initialize(weapons =  WEAPONS)
    @weapons = weapons
  end

  def choose
    @weapons.sample
  end

end
