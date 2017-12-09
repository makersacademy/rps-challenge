require_relative 'game'

class Computer
  attr_reader :name

  def initialize
    @name = "Computer"
  end

  def weapon
    Game::WEAPONS.sample
  end

end
