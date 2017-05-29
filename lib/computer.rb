require './lib/game'

class Computer

  attr_reader :name, :weapon

  def initialize(name = "Computer")
    @name = name
  end

  def random_weapon
    @weapon = Game::WEAPONS.sample
  end
  
end
