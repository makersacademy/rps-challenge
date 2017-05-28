require_relative 'game'

class Computer

  attr_reader :weapon

  def choose_weapon
    @weapon = Game::WEAPONS.sample
  end
  
end
