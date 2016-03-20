require_relative 'game'

class Computer

  attr_reader :weapon, :name

  def initialize(name)
    @name = name
  end

  def weapon
    @weapon = Game::WEAPONS.sample
  end

end
