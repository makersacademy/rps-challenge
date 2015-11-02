class Computer

  attr_reader :weapon

  def initialize (weapon = nil)
    @weapon = Game::WEAPONS.sample
  end

end