require_relative 'game'
class Computer
  attr_reader :choice, :name
  def initialize(name='Computer')
    @name = name
  end
  def weapon
    @choice = Game::WEAPONS.keys.sample
  end
end
