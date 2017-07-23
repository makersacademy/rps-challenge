require_relative 'Game'

class Computer

  attr_reader :name

  def initialize
    @name = computer
  end

  def weapon
    Game::WEAPONS.sample
  end

end
