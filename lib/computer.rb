require_relative 'game'

class Computer
  attr_reader :weapon, :name

  RANDOM_NAMES = ["Edward Scissorhands", "The Rock", "Captain Paper"]

  def initialize
    @name = RANDOM_NAMES.sample
    @weapon = weapon
  end

  # moved the randomiser into the initialize to stop it creating a new name every
  # time .name is called

  def weapon
    Game::WEAPONS.sample
  end
end
