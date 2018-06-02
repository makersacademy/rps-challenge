class Computer
  attr_reader :weapons

  def initialize
    @weapons = ["Rock", "Paper", "Scissors"]
  end

  def choose_weapon
    @weapons.sample
  end

end
