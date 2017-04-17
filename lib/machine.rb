class Machine
  attr_reader :weapon

  def initialize
    @weapon = nil
  end

  def choose_weapon
    @weapon = Game::WEAPON.sample
  end

end
