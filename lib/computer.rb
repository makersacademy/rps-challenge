class Computer

  attr_reader :name, :weapon

  def initialize
    @name = "super sity"
  end

  def choose_weapon
    @weapon = Game::WEAPONS.sample
  end

end
