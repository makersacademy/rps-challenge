class Computer
  attr_reader :name, :weapon, :type
  def initialize
    @weapon = nil
    @name = "Computer"
    @type = :computer
  end

  def weapon_selector
    @weapon = Game::WEAPONS.sample
  end
end