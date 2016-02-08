require 'game'

class Computer

attr_reader :weapon

  def random_weapon
    @weapon = Game::WEAPONS.sample
  end

end
