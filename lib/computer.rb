class Computer
  attr_reader :name
  def initialize
    @name = 'Computer'
  end

  def weapon
    @weapon = Game::WEAPONS.sample
  end
end
