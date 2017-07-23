class Computer

  attr_reader :name, :weapon

  def initialize(name)
    @name = name
  end

  def select_attack
    @weapon = Game::WEAPONS.sample
  end

end
