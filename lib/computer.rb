class Computer
  def initialize
    @weapon = nil
  end

  def weapon
    @weapon
  end

  def weapon_selector
    @weapon = Game::WEAPONS.sample
  end
end