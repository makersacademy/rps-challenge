
class Weapon
  attr_reader :weapons

  def initialize(weapons = ["Rock", "Paper", "Scissors"].sample)
    @weapons = weapons
  end
end
