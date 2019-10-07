class Player

  attr_reader :name, :weapon

  def initialize(name)
    @name = name
  end

  def choice(weapon)
    @weapon = weapon
  end

  def random_choice
    @weapon = Game::WEAPONS.sample
  end

end
