class Computer

  attr_reader :name, :weapon

  def initialize
    @name = "Computer"
    @weapon = nil
  end

  def choose_weapon
    @weapon = Game::WEAPONS.sample
  end

end
