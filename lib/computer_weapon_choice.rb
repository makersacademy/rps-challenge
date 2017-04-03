require 'game'
class ComputerWeaponChoice

  def initialize
    @choice = Game::WEAPONS.sample
  end

  attr_reader :choice

end
