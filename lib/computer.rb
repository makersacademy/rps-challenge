class Computer
  attr_reader :name, :weapon
  def initialize
    @name = 'Computer'
    weapon
  end

  def weapon
    @weapon = Game::WEAPONS.sample
  end
end
