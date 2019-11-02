class Computer

attr_reader :choice

  def initialize
    @choice = nil
  end

  def weapons(weapon)
    @choice = Game::WEAPONS.sample
  end


end
