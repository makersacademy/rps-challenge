class Computer
  attr_reader :name, :weapon, :type

  def initialize
    @weapon = Game::WEAPONS.sample
    @name = :Computer
  end
end