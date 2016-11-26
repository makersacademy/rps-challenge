require_relative 'game'

class Computer

  attr_reader :weapon

  def initialize
    @weapon = nil
  end

  def choose_weapon
    @weapon = Game::WEAPONS.sample
  end

end
