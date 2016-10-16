require_relative 'game'

class Computer
  attr_reader :weapon

  def choose
    @weapon = Game::WEAPONS.sample
  end
end
