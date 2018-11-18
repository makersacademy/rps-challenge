class ComputerPlayer

  attr_reader :weapons, :weapon, :names, :name

  def initialize(weapons = Weapon::WEAPONS)
    @weapons = weapons
    @name = "Computer"
  end

  def choose_weapon
    @weapons.sample
  end

  def add_weapon(weapon)
    @weapon = weapon
  end

end
