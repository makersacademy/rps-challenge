class Computer

  attr_reader :name, :weapon

  def initialize
    @name = "CPU"
  end

  def pick_weapon
    @weapon = Game::WEAPONS.sample
  end

end
