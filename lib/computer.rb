class Computer

  attr_reader :name, :weapon

  def initialize(name)
    @name = name
  end

  def weapon
    Game::WEAPONS.sample
  end

end