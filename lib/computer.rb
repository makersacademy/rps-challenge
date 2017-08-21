require_relative 'game'

class Computer
  attr_reader :weapon, :name

  RANDOM_NAMES = ["Edward Scissorhands", "The Rock", "Captain Paper"]

  def initialize
    @name = name
    @weapon = weapon
  end

  def name
    @name = RANDOM_NAMES.sample
  end

  def weapon
    Game::WEAPONS.sample
  end
end
