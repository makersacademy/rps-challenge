class Player
  attr_reader :name, :weapon, :weapon_choices, :computer

  def initialize(name, computer)
    @name = name
    @computer = computer
    @weapon = nil
    @weapon_choices = ["Rock", "Paper", "Scissors"]
  end

  def choose_weapon(weapon)
    @weapon = weapon
  end
end
