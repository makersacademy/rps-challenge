class Computer

attr_reader :choice

  def initialize
    @choice = nil
  end

  def weapons
    @choice = Game::WEAPONS.sample
  end


end
