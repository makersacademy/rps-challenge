require_relative 'game'

class Computer
  attr_reader :weapon, :name

  RANDOM_NAMES = ["Edward Scissorhands", "The Rock", "Captain Paper"]

  def initialize
    @name = RANDOM_NAMES.sample
    @weapon = Game::WEAPONS.sample
  end

end
