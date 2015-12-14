class Player
  attr_reader :name, :weapon, :computer

  def initialize(name, computer)
    @name = name
    @computer = computer
    @weapon = nil
  end

  WEAPONS = ["Rock", "Paper", "Scissors"]

  def choose_weapon(weapon)
    @weapon = weapon
  end

  def computer_chooses_weapon
    @weapon = WEAPONS[Kernel.rand(0..2)]
  end
end
