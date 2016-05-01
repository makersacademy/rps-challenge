class Computer

  def initialize(*)
    @name = 'Computer'
    @weapon = nil
  end

  def weapon
    @weapon = Game::WEAPONS.sample
  end

end