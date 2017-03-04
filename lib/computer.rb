class Computer

  attr_reader :weapon, :name

  def initialize(name = "Computer")
    @name = name
  end

  def choice
    @weapon = Game::WEAPONS.sample
  end
end
