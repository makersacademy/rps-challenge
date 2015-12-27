class Player
  attr_reader :name, :weapon, :computer

  def initialize(name, computer)
    @name = name
    @computer = computer
    @weapon = nil
  end

  WEAPONS = [:rock, :paper, :scissors, :lizard, :spock]

  def choose_weapon(weapon)
    @weapon = weapon.downcase.to_sym
  end

  def computer_chooses_weapon
    @weapon = WEAPONS.sample
  end
end
