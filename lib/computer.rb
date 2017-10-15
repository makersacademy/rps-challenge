class Computer

WEAPONS = ["Rock", "Paper", "Scissors", "Spock", "Lizard"]
COMPUTER_NAME = "Ms. Autoplay"

attr_reader :weapon_choice, :name

  def initialize(weapons =  WEAPONS, name = COMPUTER_NAME)
    @weapons = weapons
    @name = name
  end

  def choose
    @weapon_choice = Object.const_get(@weapons.sample).new
  end

end
