class Computer

  attr_reader :weapon

  def initialize
    @weapon = Game::WEAPONS.sample
  end

end
