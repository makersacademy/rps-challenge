require_relative 'game'

class Computer

  attr_reader :weapon, :name

  def initialize
    @name = :Computer
  end

  def choose_weapon
    @weapon = Game::WEAPONS.sample
  end

end
