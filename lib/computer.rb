class Computer
  attr_reader :name, :weapon

  def initialize(weapons=Game::WEAPONS.keys)
    @name = "Computer"
    @weapons = weapons
  end

  def pick_weapon
    @weapon = @weapons.sample
  end
end
