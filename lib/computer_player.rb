class ComputerPlayer

  attr_reader :weapons, :weapon, :names, :name

  def initialize(weapons = Weapon::WEAPONS)
    @weapons = weapons
    @names = ["Nicolas", "Louise", "Anna", "Michael"]
  end

  def choose_weapon
    @weapons.sample
  end

  def add_weapon(weapon)
    @weapon = weapon
  end

  def choose_name
    @names.sample
  end

  def add_name
    @name = choose_name
  end

end
